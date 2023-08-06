# Remove
rm -rf hardware/qcom-caf/sm8150/display
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media
rm -rf packages/resources/devicesettings

# Hals
git clone https://github.com/ArrowOS/android_hardware_qcom_audio -b arrow-13.0-caf-sm8150 hardware/qcom-caf/sm8150/audio 
git clone https://github.com/ArrowOS/android_hardware_qcom_media -b arrow-13.0-caf-sm8150 hardware/qcom-caf/sm8150/media 
git clone https://github.com/ArrowOS/android_hardware_qcom_display -b arrow-13.0-caf-sm8150 hardware/qcom-caf/sm8150/display

# Vendor
git clone https://github.com/bhaskar966/vendor_xiaomi_sweet.git -b 13.0 vendor/xiaomi/sweet

# Device Settings
git clone https://github.com/PixelExperience/packages_resources_devicesettings packages/resources/devicesettings

# Kernel
git clone -b 17 --depth=1 https://gitlab.com/PixelOS-Devices/playgroundtc.git prebuilts/clang/host/linux-x86/clang-playground
git clone -b courbet-13 --depth=1 https://github.com/vantoman/kernel_xiaomi_sm6150.git kernel/xiaomi/sweet
