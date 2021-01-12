import 'package:dio/dio.dart';

import '../Storage.dart';

class AuthIntercept extends InterceptorsWrapper {
  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    var token = await Storage().getToken();
    if (token.isNotEmpty) {
      options.headers['Authorization'] = token;
    }
    return super.onRequest(options);
  }
}
