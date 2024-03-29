; Startup code for cc65 and Shiru's NES library
; based on code by Groepaz/Hitmen <groepaz@gmx.net>, Ullrich von Bassewitz <uz@cc65.org>


NES_MAPPER				=24	;mapper number (VRC6)
NES_PRG_BANKS			=2	;number of 16K PRG banks, change to 2 for NROM256
NES_CHR_BANKS			=1	;number of 8K CHR banks
NES_MIRRORING			=1	;0 horizontal, 1 vertical, 8 four screen

FT_DPCM_OFF				=$ffc0	;samples offset, $c000 or higher, 64-byte steps
FT_SFX_STREAMS			=4	;number of sound effects played at once, can be 4 or less (faster)

.define FT_DPCM_ENABLE 	0	;zero to exclude all the DMC code
.define FT_SFX_ENABLE  	1	;zero to exclude all the sound effects code

.define SPEED_FIX		0	;zero if you want to handle PAL/NTSC speed difference by yourself


    .export _exit,__STARTUP__:absolute=1
	.import initlib,push0,popa,popax,_main,zerobss,copydata

; Linker generated symbols
	.import __RAM_START__   ,__RAM_SIZE__
	.import __ROM0_START__  ,__ROM0_SIZE__
	.import __STARTUP_LOAD__,__STARTUP_RUN__,__STARTUP_SIZE__
	.import	__CODE_LOAD__   ,__CODE_RUN__   ,__CODE_SIZE__
	.import	__RODATA_LOAD__ ,__RODATA_RUN__ ,__RODATA_SIZE__

    .include "zeropage.inc"


PPU_CTRL	=$2000
PPU_MASK	=$2001
PPU_STATUS	=$2002
PPU_OAM_ADDR=$2003
PPU_OAM_DATA=$2004
PPU_SCROLL	=$2005
PPU_ADDR	=$2006
PPU_DATA	=$2007
PPU_OAM_DMA	=$4014
PPU_FRAMECNT=$4017
DMC_FREQ	=$4010
CTRL_PORT1	=$4016
CTRL_PORT2	=$4017

OAM_BUF		=$0200
PAL_BUF		=$01c0

FRAMECNT1	=$00
FRAMECNT2	=$01
NTSCMODE	=$02
VRAMUPDATE	=$03
PAD_STATE	=$04	;2 bytes, one per controller
PAD_STATEP	=$06	;2 bytes
PAD_STATET	=$08	;2 bytes
FT_TEMP		=$0a	;7 bytes in zeropage
SCROLL_X0	=$11
SCROLL_Y0	=$12
PPU_CTRL_VAR=$13
PPU_MASK_VAR=$14
NAME_UPD_ADR=$15	;word
NAME_UPD_LEN=$17
PAL_PTR		=$18	;word
RAND_SEED	=$1a	;word
PALUPDATE	=$1c

SCROLL_X1	=$1d
SCROLL_Y1	=$1e
SCROLL_NT   =$1f
SCROLL_ADDR =$20

TEMP		=$22

PAD_BUF		=TEMP+1

PTR			=TEMP	;word
LEN			=TEMP+2	;word
NEXTSPR		=TEMP+4
SCRX		=TEMP+5
SCRY		=TEMP+6
SRC			=TEMP+7	;word
DST			=TEMP+9	;word

RLE_LOW		=TEMP
RLE_HIGH	=TEMP+1
RLE_TAG		=TEMP+2
RLE_BYTE	=TEMP+3


FT_BASE_ADR		=$0100	;page in RAM, should be $xx00
FT_DPCM_PTR		=(FT_DPCM_OFF&$3fff)>>6

.define FT_THREAD      1;undefine if you call sound effects in the same thread as sound update



.segment "HEADER"

    .byte $4e,$45,$53,$1a
	.byte NES_PRG_BANKS
	.byte NES_CHR_BANKS
	.byte NES_MIRRORING|((NES_MAPPER & $0f)<<4)
	.byte NES_MAPPER&$f0
	.res 8,0


.segment "STARTUP"

start:
_exit:

    sei
    ldx #$ff
    txs
    stx PPU_FRAMECNT
    inx
    stx PPU_MASK
    stx DMC_FREQ
    stx PPU_CTRL		;no NMI

;    lda #$41
;    sta $4018
;    lda #$0a
;    sta $4018

waitSync1:
    bit PPU_STATUS
@1:
    bit PPU_STATUS
;    bpl @1

clearPalette:
	ldy #$3f
	sty PPU_ADDR
	stx PPU_ADDR
	lda #$0f
	ldx #$20
@1:
	sta PPU_DATA
	dex
	bne @1

clearVRAM:
	txa
	ldy #$20
	sty PPU_ADDR
	sta PPU_ADDR
	ldy #$10
@1:
	sta PPU_DATA
	inx
	bne @1
	dey
	bne @1

clearRAM:
    txa
@1:
    sta $000,x
    sta $100,x
    sta $200,x
    sta $300,x
    sta $400,x
    sta $500,x
    sta $600,x
    sta $700,x
    inx
    bne @1

	lda #4
	jsr _pal_bright
	jsr _pal_clear
	jsr _oam_clear

    jsr	zerobss
	jsr	copydata

    lda #<(__RAM_START__+__RAM_SIZE__)
    sta	sp
    lda	#>(__RAM_START__+__RAM_SIZE__)
    sta	sp+1            ; Set argument stack ptr

	jsr	initlib

waitSync2:
    bit PPU_STATUS
@1:
    bit PPU_STATUS
    bpl @1

	lda #%10000000
	sta <PPU_CTRL_VAR
	sta PPU_CTRL		;enable NMI
	lda #%00000110
	sta <PPU_MASK_VAR

waitSync3:
	lda <FRAMECNT1
@1:
	cmp <FRAMECNT1
	beq @1

detectNTSC:
	ldx #52				;blargg's code
	ldy #24
@1:
	dex
	bne @1
	dey
	bne @1

	lda PPU_STATUS
	and #$80
	sta <NTSCMODE

	jsr _ppu_off

	;lda <NTSCMODE
	;jsr FamiToneInit

	.if(FT_DPCM_ENABLE)
	ldx #<music_dpcm
	ldy #>music_dpcm
	jsr FamiToneSampleInit
	.endif

	;.if(FT_SFX_ENABLE)
	;ldx #<sounds_data
	;ldy #>sounds_data
	;jsr FamiToneSfxInit
	;.endif

	.if(!SPEED_FIX)
	lda #0
	sta <NTSCMODE
	.endif

	lda #$fd
	sta <RAND_SEED
	sta <RAND_SEED+1

	lda #0
	sta PPU_SCROLL
	sta PPU_SCROLL

    ; enable interrupts
    cli
	jmp _main			;no parameters

	.include "neslib.S"

.segment "RODATA"

	.include "music.S"

	.if(FT_SFX_ENABLE)
sounds_data:
	.include "sounds.S"
	.endif

.segment "SAMPLES"

	;.incbin "music_dpcm.bin"

.segment "VRC6BOOT"

vrc6boot:
    sei
    ldx #$ff
    txs
    inx
    stx PPU_MASK
    stx DMC_FREQ
    stx PPU_CTRL		;no NMI

    ; Tell VRC6 we want WRAM and vertical mirroring
    ldx #$A0
    stx $B003


    ; Set 8k bank at $c000 to $dfff to -2
    ldx #$fe
    stx $c000
    ; Set 16k bank at $8000-$bfff to 0
    ldx #0
    stx $8000

    ; Set up the 1k chr banks as the first 8 banks
    ldx #0
    stx $D000
    ldx #1
    stx $D001
    ldx #2
    stx $D002
    ldx #3
    stx $D003

    ldx #4
    stx $E000
    ldx #5
    stx $E001
    ldx #6
    stx $E002
    ldx #7
    stx $E003

    jmp start

.segment "VECTORS"

    .word nmi	;$fffa vblank nmi
    .word vrc6boot	;$fffc reset
   	.word irq	;$fffe irq / brk


.segment "CHARS"
