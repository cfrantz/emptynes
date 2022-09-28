#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "util/nesutil.h"

#define ARRAY_SIZE(x) (sizeof(x) / sizeof(x[0]))

extern void cfplayer_init(void);
extern void cfplayer_reset_song(void);
extern const char* cfplayer_now_playing;

extern const char *song_table[];

const char *song_name[] = {
   //0123456789abcdef
    "Title           ",
    "Battle          ",
    "Boss            ",
    "Item Fanfare    ",
    "Credits         ",
    "Crystal         ",
    "Final Boss      ",
    "Great Palace    ",
    "House           ",
    "Overworld       ",
    "Palace          ",
    "Town Item       ",
    "Town            ",
    "Triforce        ",
    "Zelda           ",
};

#pragma zpsym("cfplayer_now_playing")

extern char* sfx_now_playing[4];
extern char* sound_effects[];

const unsigned char palette[32]={
    // Background palette
    0x22, 0x03, 0x23, 0x30, // skyblue, dark purple, med purple, white
    0x0f, 0x11, 0x21, 0x30, // black, blue, blue, white
    0x0f, 0x07, 0x17, 0x0f, // black, brown, light brown, black
    0x0f, 0x0a, 0x1a, 0x0f, // black, green, light green, black

    // Sprite palette
    0x0F, 0x02, 0x07, 0x26, // xx, blue, brown, pink
    0x0F, 0x16, 0x2d, 0x0f, // xx, light red, gray, black
    0x0F, 0x02, 0x11, 0x20, // xx, blue, light blue, white
    0x0F, 0x2c, 0x28, 0x30, // xx, cyan, yellow, white
};

uint16_t framenum;
uint8_t player_pad;
uint8_t player_pad_changed;
uint8_t pad;
uint8_t val;
uint8_t spridx;

const char kHex[] = "0123456789ABCDEF";

void macro_puts(uint8_t x, uint8_t y, const char *s) {
    uint16_t addr = 0x2000 | (y<<5) | x;
    ppu_macro_word(addr);
    ppu_macro_byte(16);
    while(*s) {
        ppu_macro_byte(*s++);
    }
}

#define EC01_DEATH          0x00
#define EC02_SWORD_DENIED   0x01
#define EC04_SPELL_CAST     0x02
#define EC08_FLUTE          0x03
#define EC10_FLUTE_ALT1     0x04
#define EC20_FLUTE_ALT2     0x05
#define EC40_GREAT_BARRIER  0x06
#define EC80_BOSS_DEATH     0x07

#define ED01_NOTHING        0x08
#define ED02_CRUMBLE_BRIDGE 0x09
#define ED04_CRUMBLE_BLOCK  0x0a
#define ED08_NOTHING        0x0b
#define ED10_ENEMY_DAMAGE   0x0c
#define ED20_SWORD_STRIKE   0x0d
#define ED40_CRUMBLE        0x0e
#define ED80_SWORD_STRIKE   0x0f

#define EE01_FALL_IN_PIT    0x10
#define EE02_ENCOUNTER      0x11
#define EE04_LEAVE_BATTLE   0x12
#define EE08_MENU_OPEN      0x13
#define EE10_TINK           0x14
#define EE20_SWAMP          0x15
#define EE40_NOTHING        0x16
#define EE80_NOTHING        0x17

#define EF01_NOTHING        0x18
#define EF02_ITEM           0x19
#define EF04_KILL           0x1a
#define EF08_CHIME          0x1b
#define EF10_CURSOR         0x1c
#define EF20_ELEVATOR       0x1d
#define EF40_LOW_HEALTH     0x1e
#define EF80_NOTHING        0x1f

const char *sfx_name[] = {
   //0123456789abcdef
    "Link Death      ",
    "Sword denied    ",
    "Spell cast      ",
    "Flute           ",
    "Flute Alt1      ",
    "Flute Alt2      ",
    "Great Barrier   ",
    "Boss Death      ",
    "Nothing $08     ",
    "Crumble Bridge  ",
    "Crumble Block   ",
    "Nothing $0b     ",
    "Enemy Damage    ",
    "Sword Strike $0d",
    "Crumble         ",
    "Sword Strike $0f",
    "Fall            ",
    "Encounter Enter ",
    "Encounter Exit  ",
    "Menu Open       ",
    "Tink            ",
    "Swamp           ",
    "Nothing $16     ",
    "Nothing $17     ",
    "Nothing $18     ",
    "Item            ",
    "Kill            ",
    "Chime           ",
    "Cursor          ",
    "Elevator        ",
    "Low Health      ",
    "Nothing $1f     ",
};

void play_sfx(uint8_t player_pad) {
    static int8_t which;
    // DPAD Left/Right
    if (player_pad & 0xC0) {
        if (player_pad & 0x40) {
            which -= 1;
            which &= 0x1F;
        } else {
            which += 1;
            which &= 0x1F;
        }
        macro_puts(12, 7, sfx_name[which]);
    }
    // Button A
    if (player_pad & 0x01) {
        uint8_t chan = which >> 3;
        sfx_now_playing[chan] = sound_effects[which];
    }
}


void play_song(uint8_t player_pad) {
    static int8_t which;
    // DPAD Up/Down
    if (player_pad & 0x30) {
        if (player_pad & 0x10) {
            which -= 1;
            if (which < 0) which = ARRAY_SIZE(song_name) - 1;
        } else {
            which += 1;
            if (which >= ARRAY_SIZE(song_name)) which = 0;
        }
        cfplayer_reset_song();
        cfplayer_now_playing = song_table[which];
        macro_puts(12, 6, song_name[which]);
    }
}

void main(void)
{
    cfplayer_init();

    bank_bg(0);
    bank_spr(0);
    ppu_off();
    pal_all(palette); //set palette for sprites
    oam_size(0);

    vram_puts(0, 3, "CFplayer MMC5 HiDef-NES test ROM.");
    vram_puts(0, 4, "Frame ");
    vram_puts(0, 6, "[U/D] Song: ");
    vram_puts(0, 7, "[L/R] SFX:  ");
    vram_puts(0, 8, "Press [A] to play SFX");
    ppu_on_all();
    scroll0(0, 0);

    macro_puts(12, 6, song_name[0]);
    macro_puts(12, 7, sfx_name[0]);
    cfplayer_now_playing = song_table[0];

    for(framenum=0;;++framenum) {
        ppu_waitnmi();
        oam_clear();
        spridx = 0;
        spridx = oam_spr(48, 32, kHex[(framenum>>12) & 15], 3, spridx);
        spridx = oam_spr(56, 32, kHex[(framenum>>8) & 15], 3, spridx);
        spridx = oam_spr(64, 32, kHex[(framenum>>4) & 15], 3, spridx);
        spridx = oam_spr(72, 32, kHex[framenum&15], 3, spridx);

        player_pad_changed = pad_trigger(0);
        player_pad = pad_state(0);

        if (player_pad_changed) {
            play_song(player_pad);
            play_sfx(player_pad);
        }
    }
}
