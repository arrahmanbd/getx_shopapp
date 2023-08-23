import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:zainik_task/app/core/constants/strings.dart';

import '../app_exceptions.dart';
import 'base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String endPoint) async {
    final url = Uri.parse(AppUrl.baseUrl + endPoint);
    dynamic responseJson;
    try {
      final response = await http.get(url,headers: {
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Credentials': 'true',
          'Access-Control-Allow-Headers': 'Content-Type',
          'Access-Control-Allow-Methods':
          'GET,PUT,POST,DELETE'
        }).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);

    print(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }

    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      default:
        throw FetchDataException(
            'An Error occurred while communicating with server ${response.statusCode}');
    }
  }
}
