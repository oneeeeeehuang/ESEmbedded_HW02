.syntax unified
/*.thumb*/

.word 0x20000100
.word _start

.global _start
.type _start, %function

_start:
    /* 設定三個可辨識的值 */
    movs r0, #0x11     /* r0 = 0x11 */
    movs r1, #0x22     /* r1 = 0x22 */
    movs r2, #0x33     /* r2 = 0x33 */

    /* 記得：此時先在 GDB 看一次 SP */
    /* push 測試 A */
    push {r2, r0, r1}

    /* 停在這裡，方便觀察 */
here:
    b here