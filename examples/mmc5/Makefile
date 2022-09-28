include ../../toolchain.mk

.PHONY: clean 
.PRECIOUS: *.o

all: mmc5_scanline_split.nes mmc5_vsplit.nes mmc5_extram_fillmode.nes mmc5_audio_check.nes
	 

TOPDIR=../..
SRCS=../../chars.c
OBJS=$(SRCS:.c=.o)
ASMS=$(SRCS:.c=.s)

MAPPER=../../mappers/mmc5

hello.nes: hello.o music.o z2-mmc5.o scale.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile hello.map -o $@ \
		hello.o $(OBJS) \
		music.o z2-mmc5.o scale.o\
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

do_nothing.nes: do_nothing.o no_music.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile do_nothing.map -o $@ \
		do_nothing.o no_music.o $(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

cftest.nes: cftest.o cfplayer.o cfthunk.o z2songs.o cf_sfx.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm \
		--mapfile cftest.map \
		-o $@ \
	    cfplayer.o \
	    cfthunk.o \
		cftest.o \
		z2songs.o \
		cf_sfx.o \
		$(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)
#		z2_title.o 

mmc5_scanline_split.nes: mmc5_scanline_split.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile mmc5_scanline_split.map -o $@ \
		mmc5_scanline_split.o $(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

mmc5_vsplit.nes: mmc5_vsplit.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile mmc5_vsplit.map -o $@ \
		mmc5_vsplit.o $(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

mmc5_extram_fillmode.nes: mmc5_extram_fillmode.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile mmc5_extram_fillmode.map -o $@ \
		mmc5_extram_fillmode.o $(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)

mmc5_audio_check.nes: mmc5_audio_check.o $(OBJS)
	ld65 -C $(MAPPER)/nes.cfg -vm --mapfile mmc5_audio_check.map -o $@ \
		mmc5_audio_check.o $(OBJS) \
		$(MAPPER)/libinit.a \
		../../util/libutil.a \
		$(NESLIB)


%.o: %.c
	$(CC) -I$(TOPDIR) -Oi $< --add-source
	$(AS) $*.s

%.o: %.S
	$(AS) $*.S

clean:
	@rm -fv $(OBJS) $(ASMS) *.nes *.map \
		mmc5_scanline_split.o mmc5_scanline_split.s \
		mmc5_vsplit.o mmc5_vsplit.s \
		mmc5_extram_fillmode.o mmc5_extram_fillmode.s \
		mmc5_audio_check.o mmc5_audio_check.s 
