// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:xor_encryption/xor_encryption_method_channel.dart';

// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   MethodChannelXorEncryption platform = MethodChannelXorEncryption();
//   const MethodChannel channel = MethodChannel('xor_encryption');

//   setUp(() {
//     TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
//       channel,
//       (MethodCall methodCall) async {
//         return '42';
//       },
//     );
//   });

//   tearDown(() {
//     TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
//   });

//   test('getPlatformVersion', () async {
//     expect(await platform.getPlatformVersion(), '42');
//   });
// }
