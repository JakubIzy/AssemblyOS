%ifndef EFI_TABLE_HEADER_INC
%define EFI_TABLE_HEADER_INC

struc EFI_TABLE_HEADER
    .Signature:  resq 1
    .Revision:   resd 1
    .HeaderSize: resd 1
    .CRC32:      resd 1
    .Reserved:   resd 1
endstruc                ; EFI_TABLE_HEADER_size = 24

check_signature: ; Signature in RAX
    cmp rax, EFI_SYSTEM_TABLE_SIGNATURE
    jne .bad_signature
    ret


.bad_signature:
    ;;; Need to handle it


%endif