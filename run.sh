curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
sudo qemu-system-x86_64 

 -m 8G \
 -cpu EPYC \
 -boot order=d \
 -drive file=CDROM.iso,media=cdrom \
 -drive file=HDD.img,format=raw \
 -drive file=virtio-win.iso,media=cdrom \
 -device usb-ehci,id=usb,bus=pci.0,addr=0x4 \
 -device usb-tablet \
 -vnc :0 \
 -device e1000 \
 -smp cores=2 \
 -accel tcg,thread=multi \
