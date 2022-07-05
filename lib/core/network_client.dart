import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:profileapp/constants/api_endpoint.dart';
import 'package:profileapp/core/header.dart';
import 'package:profileapp/helpers/snacks.dart';
import 'package:profileapp/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class NetworkClient {
  //to centeralize get request
  Future<http.Response?> getRequest(
      {String baseUrl = ApiEndpoints.baseUrl, required String path}) async {
    http.Response? response;
    try {
      response =
          await http.get(Uri.parse(baseUrl + path), headers: getHeader());
          if(response.statusCode == 200){
            locator.get<SharedPreferences>().setString( path, response.body);
          } else if (response.statusCode == 500){
            AppSnacks.showErrorToast(("internal server error."));
          }
    } catch (e) {
      final _cachevalue =locator<SharedPreferences>().getString(path);
      if (_cachevalue != null){
        response = http.Response(_cachevalue,200);
      }
      AppSnacks.showSnacksBar(AppSetting.navigatorkey.currentContext!,
      message: "Something went wrong");
      print(e.toString());
    }
    log(response != null ? response.statusCode.toString() : "response is null");
    return response;
  }

  //to centeralize post request
  Future<http.Response?> postRequest({
    String baseUrl = ApiEndpoints.baseUrl,
    required String path,
    Map<String, dynamic>? body,
  }) async {
    http.Response? response;
    try {
      response = await http.post(Uri.parse(baseUrl + path),
          headers: getHeader(), body: body);
    } catch (e) {
      print(e.toString());
    }
    log(response != null ? response.statusCode.toString() : "response is null");

    return response;
  }
}
