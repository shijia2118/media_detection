//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <media_detection/media_detection_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) media_detection_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MediaDetectionPlugin");
  media_detection_plugin_register_with_registrar(media_detection_registrar);
}
