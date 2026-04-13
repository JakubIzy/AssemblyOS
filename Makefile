all:

mount_disk:
	sudo mount /dev/sda1 disk/efi
	sudo mount /dev/sda2 disk/root

umount_disk:
	sudo umount disk/efi
	sudo umount disk/root
