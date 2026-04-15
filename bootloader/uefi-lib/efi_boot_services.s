%ifndef EFI_BOOT_SERVICES_INC
%define EFI_BOOT_SERVICES_INC

EFI_BOOT_SERVICES_REVISION equ EFI_SPECIFICATION_VERSION

struc EFI_BOOT_SERVICES
    .Hdr: resb 24
    ; Task Priority Services
    .RaiseTPL: resq 1
    .RestoreTPL: resq 1
    ; Memory Services
    .AllocatePages: resq 1
    .FreePages: resq 1
    .GetMemoryMap: resq 1
    .AllocatePool: resq 1
    .FreePool: resq 1
    ; Event & Timer Services
    .CreateEvent: resq 1
    .SetTimer: resq 1
    .WaitForEvent: resq 1
    .SignalEvent: resq 1
    .CloseEvent: resq 1
    .CheckEvent: resq 1
    ; Protocol Handler Services
    .InstallProtocolInterface: resq 1
    .ReinstallProtocolInterface: resq 1
    .UninstallProtocolInterface: resq 1
    .HandleProtocol: resq 1
    .Reserved: resq 1
    .RegisterProtocolNotify: resq 1
    .LocateHandle: resq 1
    .LocateDevicePath: resq 1
    .InstallConfigurationTable: resq 1
    ; Image Services
    .LoadImage: resq 1
    .StartImage: resq 1
    .Exit: resq 1
    .UnloadImage: resq 1
    .ExitBootServices: resq 1

    ; Miscellaneous Services
    .GetNextMonotonicCount: resq 1
    .Stall: resq 1
    .SetWatchdogTimer: resq 1

    ; DriverSupport Services
    .ConnectController: resq 1
    .DisconnectController: resq 1

    ; Open and Close Protocol Services
    .OpenProtocol: resq 1
    .CloseProtocol: resq 1
    .OpenProtocolInformation: resq 1

    ; Library Services
    .ProtocolsPerHandle: resq 1
    .LocateHandleBuffer: resq 1
    .LocateProtocol: resq 1
    .InstallMultipleProtocolInterfaces: resq 1
    .UninstallMultipleProtocolInterfaces: resq 1

    ; 32bit CRC Services
    .CalculateCrc32: resq 1

    ; Miscellaneous Services
    .CopyMem: resq 1
    .SetMem: resq 1
    .CreateEventEx: resq 1
endstruc ; EFI_BOOT_SERVICES_size = 355



%endif