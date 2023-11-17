import 'dart:convert';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class Back4app {
  static final String _baseUrl = "https://parseapi.back4app.com/classes/";
  static Future<void> initParse() async {
    final keyAppId = 'DXsXKpRwCizHVe2WIj7YJJblD9EFKq4vHt8gqKsq';
    final keyClientKey = 'GQgUNXIjiFwD3gd45yHNUo3RAheepahEUdxmuaHU';
    final keyParseServerUrl = 'https://parseapi.back4app.com';

    await Parse().initialize(
      keyAppId,
      keyParseServerUrl,
      clientKey: keyClientKey,
      autoSendSessionId: true,
      debug: true,
    );

    var loginDetails = ParseObject('Login_Details1')
      ..set('email', 'Kavin@gmail.com')
      ..set('password', '1234qwer*')
      ..set('name', 'KR Kavin');
    await loginDetails.save();
  }
}
