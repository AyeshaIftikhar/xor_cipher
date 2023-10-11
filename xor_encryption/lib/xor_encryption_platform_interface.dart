import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'xor_encryption_method_channel.dart';

abstract class XorEncryptionPlatform extends PlatformInterface {
  /// Constructs a XorEncryptionPlatform.
  XorEncryptionPlatform() : super(token: _token);

  static final Object _token = Object();

  static XorEncryptionPlatform _instance = MethodChannelXorEncryption();

  /// The default instance of [XorEncryptionPlatform] to use.
  ///
  /// Defaults to [MethodChannelXorEncryption].
  static XorEncryptionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [XorEncryptionPlatform] when
  /// they register themselves.
  static set instance(XorEncryptionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
