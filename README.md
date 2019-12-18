##Device configuration for Samsung Galaxy J3 (2016)

=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1.5 GHz Cortex-A7
CHIPSET | Spreadtrum SC9830i sc8830
GPU     | Mali-400
Memory  | 1 GB
Shipped Android Version | Android 5.1.1 with TouchWiz Essence
Storage | 8 GB
MicroSD | Up to 256 GB
Battery | 2600 mAh Li-Ion (removable)
Dimensions | 142.3 x 71 x 7.9 mm
Display | 720 x 1280 pixels, 5.0"
Rear Camera  | 8.0 MP, LED flash
Front Camera | 5.0 MP
Release Date | January 2016

##Building instructions

### What do you need?
* 50GB left of your hard disk space
* Basic skills / knowledge of Linux

### Building steps
* 1. Sync Android source
* 2. Copy this file ([j3xnlte.xml](https://github.com/djeman/android_device_samsung_j3xnlte/wiki/Local-manifest-Lineage-15.1)) to `.repo/local_manifests` (if that folder doesn't exist then "mkdir" it)
* 3. `repo sync` again
* 5. After sync, type `. build/envsetup.sh && brunch grandprimeve3g`
