#include "include/media_detection/media_detection_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "media_detection_plugin.h"

void MediaDetectionPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  media_detection::MediaDetectionPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
