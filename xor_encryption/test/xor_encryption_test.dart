// import 'package:flutter_test/flutter_test.dart';
// import 'package:xor_encryption/xor_encryption.dart';
// import 'package:xor_encryption/xor_encryption_platform_interface.dart';
// import 'package:xor_encryption/xor_encryption_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockXorEncryptionPlatform
//     with MockPlatformInterfaceMixin
//     implements XorEncryptionPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final XorEncryptionPlatform initialPlatform = XorEncryptionPlatform.instance;

//   test('$MethodChannelXorEncryption is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelXorEncryption>());
//   });

//   test('getPlatformVersion', () async {
//     XorEncryption xorEncryptionPlugin = XorEncryption();
//     MockXorEncryptionPlatform fakePlatform = MockXorEncryptionPlatform();
//     XorEncryptionPlatform.instance = fakePlatform;

//     expect(await xorEncryptionPlugin.getPlatformVersion(), '42');
//   });
// }
