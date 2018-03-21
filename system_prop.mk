#
# system.prop for bacon
#

# API (for CTS backward compatibility)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=19

# Bionic
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bionic.ld.warning=0

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1 \
    qcom.bluetooth.soc=smd \
    ro.bluetooth.hfp.ver=1.7 \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bluetooth.dun=false \
    ro.bluetooth.sap=false \
    ro.qualcomm.bluetooth.ftp=true \
    ro.qualcomm.bluetooth.hfp=true \
    ro.qualcomm.bluetooth.hsp=true \
    ro.qualcomm.bluetooth.map=true \
    ro.qualcomm.bluetooth.nap=true \
    ro.qualcomm.bluetooth.opp=true \
    ro.qualcomm.bluetooth.pbap=true

# CABL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

# Disable lockscreen discard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lockscreen.secdiscard=false


# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480 \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196608

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1

# HWUI
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_buffer_age=false \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

# Limit dex2oat threads to improve thermals
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-threads=2 \
    dalvik.vm.image-dex2oat-threads=4

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.period_size=192 \
    persist.audio.fluence.voicecall=true \
    ro.qc.sdk.audio.fluencetype=fluence \
    audio.offload.buffer.size.kb=32 \
    audio.offload.video=true \
    audio.offload.multiple.enabled=false \
    audio.offload.gapless.enabled=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.deep_buffer.media=true \
    mm.enable.smoothstreaming=true \
    media.aac_51_output_enabled=true

# Network
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=true \
    persist.data.tcpackprio.enable=true \
    ro.data.large_tcp_window_size=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.perf.cores_online=2 \
    ro.vendor.extension_library=libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.ril.ext.ecclist=112,911,999,110,122,119,120,000,08,118 \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.default_network=9 \
    ro.use_data_netmgrd=true \
    telephony.lteOnGsmDevice=1

# Network
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.qmi.adb_logmask=0

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.camera.facialproc=true \
    ro.qc.sdk.gestures.camera=false \
    ro.qti.sdk.sensors.gestures=true \
    ro.qti.sensors.bte=true \
    ro.qti.sensors.gtap=true \
    ro.qti.sensors.ir_proximity=true \
    ro.qti.sensors.vmd=true

# Time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Disable Treble OMX
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Qualcomm® aptX™
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bt.enableAptXHD=true \
    persist.service.btui.use_aptx=1 \
    persistent.bt.a2dp_offload_cap=sbc-aptx-aptXHD

# Debug
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
     ro.adb.secure=0
