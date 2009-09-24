/*
 * Copyright 2007, Google Inc.
 * Copyright (c) 2009, Code Aurora Forum. All rights reserved.
*/

#include <boot/boot.h>
#include <boot/gpio_keypad.h>

#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))

static unsigned char qwerty_keys_old[] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
					   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static unsigned char qwerty_keys_new[] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
					   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

static unsigned int qwerty_keypad_map[] = {
	[34] = BOOT_KEY_STOP_BOOT,          /* -L on SURF & FFA */
};

static qwerty_keypad_info qwerty_keypad = {
    .old_keys = qwerty_keys_old,
    .rec_keys = qwerty_keys_new,
    .rows = ARRAY_SIZE(qwerty_keys_new),
    .columns = sizeof(unsigned char) * 8,
    .key_map = qwerty_keypad_map,
};

static void keypad_poll()
{
    static int skip = 0;
    skip++;
    if(skip > 10) {
	scan_qwerty_keypad(&qwerty_keypad);
        skip = 0;
    }
}

void keypad_init(void)
{
    ssbi_keypad_init();
    boot_register_poll_func(keypad_poll);
}
