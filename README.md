gms_addon
=========
Intro
-----

android gms addon for Jellybean 4.2.2

If you want to add GMS in your custom android rom, follow this.

* Prepare AOSP Build Environment.

 See http://source.android.com/source/initializing.html

* Prepare extract tools

 If you are completed to prepare, just run like this.

        $ source bulid/envsetup.sh
        $ lunch $YOUR_TARGET_DEVICE
        $ make -j4 aapt zipalign simg2img
        $ which aapt
        out/host/linux-x86/bin/aapt
        $ which zipalign
        out/host/linux-x86/bin/zipalign
        $ which simg2img
        out/host/linux-x86/bin/simg2img



 After build, these tools will be located on out/host/linux-x86/bin/ directory.


* Download nexus factory image.

 You can download from https://developers.google.com/android/nexus/images


* Convert factory image to ext4fs.

 If you open factory image tarball, there is a file named image-XXX.zip.

 And extract again, there is system.img file.

 It is sparsed filesystem, so if you want to mount as ext4 filesystem, you must convert.

        $ tar xf occam-jdq39-factory-345dc199.tgz
        $ cd occam-jdq39
        $ unzip -x image-occam-jdq39.zip
        $ simg2img system.img system.ext4


* Mount system image on your filesystem

        $ mkdir -p factory_image_path
        $ sudo mount -o loop system.ext4 factory_image_path


* Add this repository in you local_manifests

        $ cat .repo/local_manifests/gms.xml
        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
          <remote  name="github"
        		fetch="https://github.com" />
        	<project path="vendor/google"
        		name="ganadist/gms_addon" revision="android-4.2.2-r1" />
        </manifest>


* Sync and setup your environment again.

        $ repo sync
        $ source build/envsetup.sh

 After this, you can run extract_nexus_image script


* Extract proprietary binaries with script

        $ extract_nexus_image factory_image_path


* Add this line on end of your device/$VENDOR/$DEVICE/$TARGET_PRODUCT.mk

        $(call inherit-product-if-exists, vendor/google/product/gms.mk)


* Build your custom rom.
