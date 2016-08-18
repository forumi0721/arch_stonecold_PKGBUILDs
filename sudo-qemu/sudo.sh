#!/usr/bin/env bash

if [ "$(basename "${0}")" = "sudoedit" ]; then
	case "$(uname -a)" in
		"arm"|"armv6h"|"armv7h"|"aarch64")       
			/usr/bin/sudo-qemu/sudoedit "${@}"
			;;
		*)              
			/usr/bin/sudo-qemu/qemu-arm-static /usr/bin/sudo-qemu/sudoedit "${@}"
			;;
	esac 
else
	case "$(uname -a)" in
		"arm"|"armv6h"|"armv7h"|"aarch64")       
			/usr/bin/sudo-qemu/sudo "${@}"
			;;
		*)              
			/usr/bin/sudo-qemu/qemu-arm-static /usr/bin/sudo-qemu/sudo "${@}"
			;;
	esac 
fi

exit ${?}
