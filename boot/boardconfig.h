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

#ifndef _BOARDCONFIG_H
#define _BOARDCONFIG_H

#define PHYSICAL_DRAM_BASE   0x00200000
#define KERNEL_ADDR          (PHYSICAL_DRAM_BASE + 0x00008000)
#define RAMDISK_ADDR         (PHYSICAL_DRAM_BASE + 0x01000000)
#define TAGS_ADDR            (PHYSICAL_DRAM_BASE + 0x00000100)
#define NEWTAGS_ADDR         (PHYSICAL_DRAM_BASE + 0x00004000)
#define SECONDARY_ADDR       (PHYSICAL_DRAM_BASE + 0x00F00000)

#endif
