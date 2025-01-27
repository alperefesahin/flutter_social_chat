import 'dart:convert';

class PhoneNumberSignInStateCodec {
  static String encode(Map<String, dynamic> data) {
    return jsonEncode(data);
  }

  static Map<String, dynamic> decode(String jsonString) {
    return jsonDecode(jsonString) as Map<String, dynamic>;
  }
}
