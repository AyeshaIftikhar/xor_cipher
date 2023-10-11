import "dart:math";
import 'dart:core';
import 'dart:convert';
import 'dart:developer' as developer;

class XorCipher {
  static const chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890=';
  Random rnd = Random();

  /// Generate a Randomized secert key form encryption process.Pass any number for [length]
  String getSecretKey(int length) => String.fromCharCodes(
        Iterable.generate(
          length,
          (_) => chars.codeUnitAt(rnd.nextInt(chars.length)),
        ),
      );

  List<int> getAsciiCode(String text) => const AsciiEncoder().convert(text);

  String getStringFromAscii(List<int> result) {
    String text = '';
    for (int i = 0; i < result.length; i++) {
      text = text + String.fromCharCode(result[i]);
    }
    return text;
  }

  List<int> encrypt(List<int> source, List<int> key) {
    List<int> encrypted = [];
    for (int i = 0; i < source.length; i++) {
      encrypted.add(source[i] ^ key[i % key.length]);
    }
    return encrypted;
  }

  String encryptData(String message, String secret) {
    String encrypted = '';
    List<int> secretAscii = getAsciiCode(secret);
    List<int> messageAscii = getAsciiCode(message);
    final result = encrypt(messageAscii, secretAscii);
    developer.log('Converted String: $result');
    encrypted = getStringFromAscii(result);
    return encrypted;
  }
}
