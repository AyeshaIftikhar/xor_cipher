#include "include/xor_encryption/xor_encryption_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "xor_encryption_plugin.h"

void XorEncryptionPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  xor_encryption::XorEncryptionPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
