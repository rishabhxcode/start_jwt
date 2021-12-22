/**
 * [Base64 Data Encodings](http://tools.ietf.org/html/rfc4648)
 */
library base64;

import 'dart:convert';
import 'package:cryptoutils/cryptoutils.dart';

/**
 *
 */
class Base64Encoder extends Converter<List<int>, String> {
  const Base64Encoder();

  @override
  String convert(List<int> input) => CryptoUtils.bytesToBase64(input);
}

/**
 *
 */
class Base64Decoder extends Converter<List<int>, String> {
  const Base64Decoder();

  @override
  String convert(List<int> input) {
    return CryptoUtils.bytesToBase64(input);
  }

  // @override
  // List<int> convert(String input) => CryptoUtils.base64StringToBytes(input);
}

/**
 *
 */
class Base64Codec extends Codec {
  const Base64Codec();

  @override
  Converter get encoder => const Base64Encoder();

  @override
  Converter get decoder => const Base64Decoder();
}

const BASE64 = const Base64Codec();
