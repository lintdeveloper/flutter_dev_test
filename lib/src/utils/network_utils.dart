import 'dart:convert';

import 'package:flutterdevtest/src/utils/constants.dart';
import 'package:flutterdevtest/src/utils/custom_exception.dart';
import 'package:http/http.dart' as http;
import 'dart:async';


class NetworkUtil {
  static NetworkUtil _instance = new NetworkUtil.internal();
  NetworkUtil.internal();
  factory NetworkUtil() => _instance;

  Future<Map> get(String url, {Map headers}) async{
    var client = new http.Client();
    try {
      var response = await client.get(url,
          headers: headers).timeout(
          const Duration(seconds: Constants.TIME_OUT_SECONDS));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw new CustomException();
      }

    } on TimeoutException catch (_) {
      throw new CustomException(msg: Constants.TIME_OUT_MSG);
    } on Exception catch(e) {
      e.toString().contains('SocketException')? throw new CustomException(msg: Constants.SOCKET_EXCEPTION_MSG)
          : throw Exception();
    } finally {
      client.close();
    }
  }
}