/* Copyright 2007, Google Inc. */
/* Copyright (c) 2009, Code Aurora Forum.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#include <boot/boot.h>
#include <boot/flash.h>
#include <msm7k/shared.h>

ptentry PTABLE[] = {
    {
        .start = 304,
        .length = 40,
        .name = "boot",
    },
    {
        .start = 360,
        .length = 512,
        .name = "system",
    },
    {
        .start = 872,
        .length = 151 + 1024,
        .name = "userdata",
    },
    {
        .name = "",
    },
};

const char *board_cmdline(void)
{
    return "mem=201M console=ttyMSM2,115200n8";
}

unsigned board_machtype(void)
{
    return 1007016;   // 7630 SURF
}

void board_init()
{
    unsigned n;

    /* if we already have partitions from elsewhere,
    ** don't use the hardcoded ones
    */
    if(flash_get_ptn_count() == 0) {
        for(n = 0; PTABLE[n].name[0]; n++) {
            flash_add_ptn(PTABLE + n);
        }
    }

    // TODO - disable UART init on 7x27 due to issues
    //        with modem on 1004 build
    //clock_enable(UART3_CLK);
    //clock_set_rate(UART3_CLK, 19200000 / 4);

    //uart_init(2);
}

void board_usb_init(void)
{
}

void board_ulpi_init(void)
{
}

void board_reboot(void)
{
}

void board_getvar(const char *name, char *value)
{
}
