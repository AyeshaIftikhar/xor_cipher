import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'xor_encryption_platform_interface.dart';

/// An implementation of [XorEncryptionPlatform] that uses method channels.
class MethodChannelXorEncryption extends XorEncryptionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('xor_encryption');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
