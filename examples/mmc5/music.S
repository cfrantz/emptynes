;======================================================================================================================
;   - famistudio_init            : Initialize the engine with some music data.
;   - famistudio_music_play      : Start music playback with a specific song.
;   - famistudio_music_pause     : Pause/unpause music playback.
;   - famistudio_music_stop      : Stops music playback.
;   - famistudio_sfx_init        : Initialize SFX engine with SFX data.
;   - famistudio_sfx_play        : Play a SFX.
;   - famistudio_sfx_sample_play : Play a DPCM SFX.
;   - famistudio_update          : Updates the music/SFX engine, call once per frame, ideally from NMI.
;
;======================================================================================================================

;    .import famistudio_init
;    .import famistudio_music_play
;    .import famistudio_update

    .export _music_init
    .export _music_play
    .export _music_nmi_update


;void __fastcall__ music_init(const void* data);
_music_init:
    ;; Get AX (lo/hi) into XY (lo/hi)
    pha
    txa
    tay
    pla
    tax
    lda #1
    jmp famistudio_init

;void __fastcall__ music_play(uint8_t song);
_music_play = famistudio_music_play

_music_nmi_update = famistudio_update

.include "famistudio_ca65.S"
