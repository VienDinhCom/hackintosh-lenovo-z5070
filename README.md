# How to install Mac OS El Capitan 10.11.04 on Lenovo Z50-70

## I. Installation

### 1. Download OSX El Capitan

You can <a href="magnet:?xt=urn:btih:0646475cda838a8458a1142b5ca05fbe43405cb3&dn=Install+OS+X+El+Capitan.app&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fpublic.popcorn-tracker.org%3A6969">download Mac OS El Capitan 10.11.04 via torrent</a>. Then, extract the zip file and copy `Install OS X El Capitan` to Applications folder.

### 2. Prepare Bootable USB Drive

* For creating Bootable USB, you can follow this guide (<a href="https://www.tonymacx86.com/threads/unibeast-install-os-x-el-capitan-on-any-supported-intel-based-pc.172672/#create_unibeast">Using UniBeast to Make OSX El Capitan Bootable USB</a>). **Read STEP 2 only!**

* The keyboard may not work on boot, you need to copy `ApplePS2SmartTouchPad.kext` from `Kexts` folder to USB's Clover kexts folder `EFI/CLOVER/kexts/10.11`.

### 3. Install OS X El Capitan

For installing OS X El Capitan, please follow <a href="https://www.tonymacx86.com/threads/unibeast-install-os-x-el-capitan-on-any-supported-intel-based-pc.172672/#uefi_settings">STEP 3: Recommended BIOS Settings</a> & <a href="https://www.tonymacx86.com/threads/unibeast-install-os-x-el-capitan-on-any-supported-intel-based-pc.172672/#install_elcap">STEP 4: Install OS X El Capitan</a>.

## II. Post Installation

Download Tools, Patchs, Kexts, Clover <a href="https://github.com/Maxvien/hackintosh-lenono-z5070/archive/master.zip">here (hackintosh-lenono-z5070)</a>.

`cd ~/Downloads/hackintosh-lenono-z5070`

### 1. Install Kexts

`Patchs/install_kexts`

### 2. Install Clover Bootloader

`sudo Patchs/mount_efi.sh`

`sudo rm -rf /Volumes/EFI/EFI & sudo cp -R Clover/EFI /Volumes/EFI/`

### 3. Disable Hibernation

`sudo pmset -a hibernatemode 0`

`sudo rm /var/vm/sleepimage`

`sudo mkdir /var/vm/sleepimage`

### 4. Remap Home End Keys

`Patchs/fix_keys.sh`

### 5. Some Tweaks

* Disable App Store Update.
* Disable Bluetooth
* Tweak Mouse & Trackpad
* Lock Screen
* Install Homebrew

## III. Reference

* <a href="https://github.com/the-braveknight/Lenovo-Z50-DSDT-Patch">DSDT patch repository for Lenovo Z50-70 laptop</a>
* <a href="http://www.tonymacx86.com/el-capitan-laptop-guides/179520-guide-lenovo-z50-70-using-clover-uefi-10-11-a.html">[Guide] Lenovo Z50-70/Z40-70 using Clover UEFI (10.11)</a>
* <a href="https://www.tonymacx86.com/threads/unibeast-install-os-x-el-capitan-on-any-supported-intel-based-pc.172672/">UniBeast: Install OS X El Capitan on Any Supported Intel-based PC</a>
