#ifndef FLUTTER_PLUGIN_MEDIA_DETECTION_PLUGIN_H_
#define FLUTTER_PLUGIN_MEDIA_DETECTION_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace media_detection {

class MediaDetectionPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MediaDetectionPlugin();

  virtual ~MediaDetectionPlugin();

  // Disallow copy and assign.
  MediaDetectionPlugin(const MediaDetectionPlugin&) = delete;
  MediaDetectionPlugin& operator=(const MediaDetectionPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace media_detection

#endif  // FLUTTER_PLUGIN_MEDIA_DETECTION_PLUGIN_H_
