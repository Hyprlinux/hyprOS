# hyprOS

## build

install archiso (only arch supported for now)
```
pacman -S archiso
```

build it
```
git clone https://github.com/jacekpoz/hyprOS.git $DIR
cd $DIR
sudo mkarchiso -v hyprOS
```

the filesystem and other shit will be at `./work/`

the iso will be `./out/`

## run

if you have qemu on your system you can run it by doing
there's gonna be an ISO here in some time
```
run_archiso -i hyprOS-...-x86_64.iso
```
if you wanna change bios to uefi add the `-u` flag
