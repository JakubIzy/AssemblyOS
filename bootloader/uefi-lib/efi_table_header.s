%ifndef EFI_TABLE_HEADER_INC
%define EFI_TABLE_HEADER_INC


; EFI_TABLE_HEADER struct
;
; Fields:
;    - .Signature
;    - .Revision
;    - .HeaderSize
;    - .CRC32
;    - .Revision
struc EFI_TABLE_HEADER
    ; Offset 0, 64bit signature, defined in "signatures.s" file, as EFI_SYSTEM_TABLE_SIGNATURE
    .Signature:  resq 1
    ; Offset 8, 32bit revision number, upper 16 bits contain major revision value,
    ; lower 16 bits contain revision value. Minor division value is split into two parts:
    ;     - the upper decimal - minor revision value divided by 10 as integer
    ;     - the lower decimal - minor revision value modulo 10
    .Revision:   resd 1
    ; Offset 12, 32bit size of entire table including EFI_TABLE_HEADER, in bytes
    .HeaderSize: resd 1
    ; Offset 16, 32bit CRC of the entire table including EFI_TABLE_HEADER
    ; Computed by setting this field to 0 and computing the 32bit CRC for HeaderSize bytes
    .CRC32:      resd 1
    ; Offset 20, reserved bytes, must be set to 0
    .Reserved:   resd 1
endstruc                ; EFI_TABLE_HEADER_size = 24

check_signature: ; Signature in RAX
    cmp rax, EFI_SYSTEM_TABLE_SIGNATURE
    jne .bad_signature
    ret

crc32_compute:



.bad_signature:
    ;;; Need to handle it

.bad_crc32:
    ;;; Need to handle it


%endif