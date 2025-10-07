import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getx_mvvm/data/exception.dart';
import 'package:getx_mvvm/data/network/baseapi_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiservices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responceJason;
    try {
      final responce = await http
          .get(Uri.parse(url))
          .timeout(Duration(seconds: 10));
      responceJason = returnResponce(responce);
    } on SocketException {
      throw InternetException("No Internet Connection");
    } on FetchDataException {
      throw InternetException("error occurred during communication");
    }
    return responceJason;
  }

  @override
  Future<dynamic> postApi(String url, data) async {
    dynamic responceJason;
    try {
      final responce = await http
          .post(Uri.parse(url), body: data)
          .timeout(Duration(seconds: 10));
      responceJason = returnResponce(responce);
    } on SocketException {
      throw InternetException("No Internet Connection");
    } on FetchDataException {
      throw InternetException("error occurred during communication");
    }
    if (kDebugMode) {
      print('responce jason $responceJason');
    }

    return responceJason;
  }

  dynamic returnResponce(http.Response responce) {
    switch (responce.statusCode) {
      case 200:
        dynamic responceJson = responce.body;
        return responceJson;
      case 400:
        throw Exception("Bad Request: ${responce.body}");
      case 500:
      case 404:
        throw Exception("Internal Server Error: ${responce.body}");
      default:
        throw Exception(
          "Error occured while communication with server with status code : ${responce.statusCode}",
        );
    }
  }
}
