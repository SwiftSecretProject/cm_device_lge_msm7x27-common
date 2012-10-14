# This script installs automatically all needed patches for the devices supported by lgics. #
# Concept by Rashed97, modified by Bytecode #

echo "Obtaining build directory..."
rootdirectory="$PWD"
cd frameworks/base
echo "Reversing frameworks/base patches..."
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/frameworks_base/0001-Triggering-EarlySuspend-based-on-BackLight-brightnes.patch
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/frameworks_base/0002-Fix-to-manually-search-networks.patch
cd $rootdirectory
cd packages/apps/LegacyCamera
echo "Reversing LegacyCamera patches..."
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/packages_apps_LegacyCamera/0001-load-correct-library-panorama.patch
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/packages_apps_LegacyCamera/0002-mosaic-Hack-renderer-to-support-devices-without-exte.patch
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/packages_apps_LegacyCamera/0003-Add-panorama-mode-support.patch
cd $rootdirectory
cd packages/apps/Gallery2
echo "Reversing Gallery2 patches..."
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/packages_apps_Gallery2/0001-hide-jelly-bean-camera.patch
cd $rootdirectory
cd external/libncurses
echo "Reversing libncurses patches..."
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/external_libncurses/0001-Revert-Adding-code-to-copy-terminfo-data-to-system-e.patch
cd $rootdirectory
cd external/webkit
echo "Reversing webkit patches..."
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/external_webkit/0001-Hack-shaders-to-work-on-devices-without-OES_external.patch
cd $rootdirectory
cd frameworks/av
echo "Reversing frameworks/av patches..."
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/frameworks_av/0001-graphics-Add-directives-for-compatibility-with-older.patch
cd $rootdirectory
cd frameworks/native
echo "Reversing frameworks/native patches..."
patch -R < $rootdirectory/device/lge/msm7x27-common/patches/frameworks_native/0001-graphics-Add-directives-for-compatibility-with-older.patch
echo "Changing to build directory.."
cd $rootdirectory
