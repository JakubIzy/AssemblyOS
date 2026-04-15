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

; EFI_SYSTEM_TABLE struct
;
; Fields:
;     - .Hdr
;     - .FirmwareVendor
;     - .FirmwareRevision
;     - ._pad0
;     - .ConsoleInHandle
;     - .ConIn
;     - .ConsoleOutHandle
;     - .ConOut
;     - .StandardErrorHandle
;     - .StdErr
;     - .RuntimeServices
;     - .BootServices
;     - .NumberOfTableEntries
;     - .ConfigurationTable
struc EFI_SYSTEM_TABLE
    ; EFI_TABLE_HEADER
    .Hdr: resb EFI_TABLE_HEADER.HeaderSize
    ; String that identifies firmware vendor
    .FirmwareVendor: resq 1
    ; Value representing  of the firmware
    .FirmwareRevision: resd 1
    ; Padding
    ._pad0: resd 1
    
    ; Console input handle
    .ConsoleInHandle: resq 1
    ; Pointer to EFI_SIMPLE_TEXT_INPUT_PROTOCOL associated with ConsoleInHandle
    .ConIn: resq 1
    ; Console output handle
    .ConsoleOutHandle: resq 1
    ; Pointer to EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL associated with ConsoleOutHandle
    .ConOut: resq 1
    ; Handle for printing errors on console
    .StandardErrorHandle: resq 1
    ; Pointer to EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL associated with StandardErrorHandle
    .StdErr: resq 1
    ; Pointer to EFI_RUNTIME_SERVICES table
    .RuntimeServices: resq 1
    ; Pointer to EFI_BOOT_SERVICES table
    .BootServices: resq 1
    ; The number of system configuration tables in the buffer ConfigurationTable
    .NumberOfTableEntries: resq 1
    ; Pointer to system configuration tables
    .ConfigurationTable: resq 1
endstruc ; EFI_SYSTEM_TABLE_size = 120
    

%endif