//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <xor_encryption/xor_encryption_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) xor_encryption_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "XorEncryptionPlugin");
  xor_encryption_plugin_register_with_registrar(xor_encryption_registrar);
}
