// Listing1-4.S

.data
    .align 3

titleStr:
    .asciz "Listing 1-4: Interaction"

promptStr:
    .asciz "Enter A String: "

fmtStr:
    .asciz "The assembly code received: %s\n"

buffer:
    .space 256


.text
    .align 2


.global _asmMain
.global _getTitle

.global _printf
.global _readLine

_getTitle:
    adrp    x0, titleStr@PAGE
    add     x0, x0, titleStr@PAGEOFF

    ret

_asmMain:
    stp     x29, x30, [sp, #-16]!
    mov     x29, sp

    adrp    x0, promptStr@PAGE
    add     x0, x0, promptStr@PAGEOFF
    bl      _printf

    adrp    x0, buffer@PAGE
    add     x0, x0, buffer@PAGEOFF
    // 参数 2 (X1): 最大长度 256
    mov     x1, #256
    bl      _readLine

    adrp    x0, fmtStr@PAGE
    add     x0, x0, fmtStr@PAGEOFF

    adrp    x1, buffer@PAGE
    add     x1, x1, buffer@PAGEOFF
    bl      _printf

    ldp     x29, x30, [sp], #16
    ret