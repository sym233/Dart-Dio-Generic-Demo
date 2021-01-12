import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

import 'Storage.dart';
import 'Types/ProjectSelect.dart';
import 'Url.dart';
import 'Types/BasicResponse.dart';
import 'Types/Login.dart';
import 'Types/Logout.dart';

class Api {
  final BaseOptions _options = BaseOptions(
      connectTimeout: 20000, receiveTimeout: 20000, followRedirects: true);
  final List<Interceptor> _interceptors = [];
  Dio _dio;
  Api({BaseOptions options, List<Interceptor> interceptors}) {
    _dio = Dio(options ?? _options);
    _interceptors.addAll(interceptors ?? []);
    for (var interceptor in _interceptors) {
      _dio.interceptors.add(interceptor);
    }
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      // config the http client
      client.findProxy = (uri) {
        //proxy all request to localhost:8888
        return 'PROXY localhost:8889';
      };
      // you can also create a new HttpClient to dio
      // return new HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
    };
  }

  Future<Login> login(String cellphone, String password, int terminal) async {
    var query = {
      'cellphone': cellphone,
      'password': password,
      'terminal': terminal,
    };
    try {
      var response = await _dio.post(Url.login, queryParameters: query);
      var data = BasicResponse<Login>.fromJson(response.data).data;
      await Storage().setToken(data.token);
      return data;
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<Logout> logout() async {
    try {
      var response = await _dio.get(Url.logout);
      return BasicResponse<Logout>.fromJson(response.data).data;
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<List<ProjectSelect>> projectSelect() async {
    try {
      var response = await _dio.get(Url.projectSelect);
      return BasicResponse<List<ProjectSelect>>.fromJson(response.data).data;
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}
