#
# Copyright (C) 2020 Raphielscape LLC. and Haruka LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Evolution X Overlays
PRODUCT_PACKAGES += \
    EvolutionXConfigOverlay \
    ImmersiveNavigationOverlay \
    NetworkStackOverlay \
    PixelLauncherCustomOverlay \
    PixelSetupWizardOverlayEvolutionX

# Google Overlays
PRODUCT_PACKAGES += \
    DMServiceOverlay \
    GoogleConfigOverlay \
    GoogleWebViewOverlay \
    ManagedProvisioningPixelOverlay \
    PixelConfigOverlay2018 \
    PixelConfigOverlay2019 \
    PixelConfigOverlay2019Midyear \
    PixelConfigOverlayCommon \
    PixelDocumentsUIGoogleOverlay \
    SettingsGoogleOverlayPixel2022

# Go Edition Overlays
ifeq ($(TARGET_USES_GO_GAPPS),true)
PRODUCT_PACKAGES += \
    GmsConfigOverlayGalleryGo \
    GmsConfigOverlaySearchGo
endif

# Now Playing Overlay
ifneq ($(filter blueline crosshatch bonito sargo flame coral sunfish bramble redfin oriole raven bluejay panther cheetah, $(TARGET_DEVICE)),)
PRODUCT_PACKAGES += \
    NowPlayingOverlay
endif

# Google Apex Overlays
ifneq ($(filter blueline crosshatch bonito sargo flame coral sunfish bramble redfin oriole raven bluejay panther cheetah, $(TARGET_DEVICE)),)
PRODUCT_PACKAGES += \
    CellBroadcastReceiverOverlay \
    CellBroadcastServiceOverlay \
    GooglePermissionControllerOverlay \
    MediaProviderOverlay \
    NetworkStackGoogleOverlay \
    PixelTetheringOverlay
endif
