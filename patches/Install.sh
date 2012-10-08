# This script installs automatically all needed patches for the devices supported by lgics. #
# Concept by Rashed97, reviewed by Bytecode #

echo "Make sure you are running this right from the working directory. It will not work correctly if used elsewhere"
echo "Obtaining build directory..."
rootdirectory="$PWD"
cd frameworks/base
echo "Applying frameworks/base patches..."
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/frameworks_base/0001-Triggering-EarlySuspend-based-on-BackLight-brightnes.patch
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/frameworks_base/0002-Fix-to-manually-search-networks.patch
cd $rootdirectory
cd packages/apps/LegacyCamera
echo "Applying LegacyCamera patches..."
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/packages_apps_LegacyCamera/0001-load-correct-library-panorama.patch
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/packages_apps_LegacyCamera/0002-mosaic-Hack-renderer-to-support-devices-without-exte.patch
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/packages_apps_LegacyCamera/0003-Add-panorama-mode-support.patch
cd $rootdirectory
cd packages/apps/Gallery2
echo "Applying Gallery2 patches..."
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/packages_apps_Gallery2/0001-hide-jelly-bean-camera.patch
cd $rootdirectory
cd external/libncurses
echo "Applying libncurses patches..."
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/external_libncurses/0001-Revert-Adding-code-to-copy-terminfo-data-to-system-e.patch
cd $rootdirectory
cd external/webkit
echo "Applying webkit patches..."
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/external_webkit/0001-Hack-shaders-to-work-on-devices-without-OES_external.patch
echo "Changing to build directory.."
cd $rootdirectory
cd frameworks/av
echo "Applying frameworks/av patches..."
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/frameworks_av/0001-graphics-Add-directives-for-compatibility-with-older.patch
cd $rootdirectory
cd frameworks/native
echo "Applying frameworks/native patches..."
patch -p1 < $rootdirectory/device/lge/msm7x27-common/patches/frameworks_native/0001-graphics-Add-directives-for-compatibility-with-older.patch
cd $rootdirectory
