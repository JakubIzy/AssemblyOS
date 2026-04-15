%ifndef EFI_SYSTEM_TABLE_INC
%define EFI_SYSTEM_TABLE_INC

%include "efi_table_header.s"

; Revisions
EFI_2_100_SYSTEM_TABLE_REVISION equ ((2<<16) or 100)
EFI_2_90_SYSTEM_TABLE_REVISION equ ((2<<16) or 90)
EFI_2_80_SYSTEM_TABLE_REVISION equ ((2<<16) or 80)
EFI_2_70_SYSTEM_TABLE_REVISION equ ((2<<16) or 70)
EFI_2_60_SYSTEM_TABLE_REVISION equ ((2<<16) or 60)
EFI_2_50_SYSTEM_TABLE_REVISION equ ((2<<16) or 50)
EFI_2_40_SYSTEM_TABLE_REVISION equ ((2<<16) or 40)
EFI_2_31_SYSTEM_TABLE_REVISION equ ((2<<16) or 31)
EFI_2_30_SYSTEM_TABLE_REVISION equ ((2<<16) or 30)
EFI_2_20_SYSTEM_TABLE_REVISION equ ((2<<16) or 20)
EFI_2_10_SYSTEM_TABLE_REVISION equ ((2<<16) or 10)
EFI_2_00_SYSTEM_TABLE_REVISION equ ((2<<16) or 00)
EFI_1_10_SYSTEM_TABLE_REVISION equ ((1<<16) or 10)
EFI_1_02_SYSTEM_TABLE_REVISION equ ((1<<16) or 02)
EFI_SYSTEM_TABLE_REVISION equ EFI_2_100_SYSTEM_TABLE_REVISION
EFI_SPECIFICATION_VERSION equ EFI_SYSTEM_TABLE_REVISION

struc EFI_SYSTEM_TABLE
    .Hdr: resb EFI_TABLE_HEADER.HeaderSize
    .FirmwareVendor: resq 1
    .FirmwareRevision: resd 1
    ._pad0: resd 1
    .ConsoleInHandle: resq 1
    .ConIn: resq 1
    .ConsoleOutHandle: resq 1
    .ConOut: resq 1
    .StandardErrorHandle: resq 1
    .StdErr: resq 1
    .RuntimeServices: resq 1
    .BootServices: resq 1
    .NumberOfTableEntries: resq 1
    .ConfigurationTable: resq 1
endstruc ; EFI_SYSTEM_TABLE_size = 120



%endif