#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "util/nesutil.h"

void __fastcall__ music_init(const void* data);
void __fastcall__ music_play(uint8_t song);


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

extern const char z2_extract_music_data[];

uint16_t framenum;
uint8_t player_pad;
uint8_t player_pad_changed;
uint8_t pad;
uint8_t val;
uint8_t spridx;

const char kBars[] = "||||||||||||||||||||||||||||||||";
const char kHex[] = "0123456789ABCDEF";

void dobrk(void) {
    asm("brk");
    asm("nop");
}

void main(void)
{
    music_init(z2_extract_music_data);
    bank_bg(1);
    bank_spr(0);
    ppu_off();
    pal_all(palette); //set palette for sprites
    oam_size(0);

    vram_puts(10, 3, "Hello World!");
    vram_puts(0, 12, kBars);
    vram_puts(0, 13, kBars);
    vram_puts(9, 20, "Goodbye World!");

    vram_puts(10,32+4, "Hello Screen2");
    vram_puts(0, 32+12, kBars);
    vram_puts(0, 32+13, kBars);
    vram_puts(9, 32+21, "Goodbye Screen2");
    for(val=0; val<32; ++val) {
        vram_adr(0x2000 + val*32);
        vram_put(kHex[val>>4]);
        vram_put(kHex[val&15]);
    }

    set_split(13*8-1);
    ppu_on_all();

    music_play(0);
    for(framenum=0;;++framenum) {
        ppu_waitnmi();
        oam_clear();
        spridx = 0;
        val = readreg8(0);
        spridx = oam_spr(8, 32, kHex[val>>4], 3, spridx);
        spridx = oam_spr(16, 32, kHex[val&15], 3, spridx);

        val = readreg8(1);
        spridx = oam_spr(8, 40, kHex[val>>4], 3, spridx);
        spridx = oam_spr(16, 40, kHex[val&15], 3, spridx);

        player_pad_changed = pad_trigger(0);
        player_pad = pad_state(0);
        //scroll0(-framenum, 0);
        //scroll1(framenum, 13*8);
    }
}
