import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:profileapp/constants/api_endpoint.dart';
import 'package:profileapp/core/network_client.dart';
import 'package:profileapp/features/daily_updates/model/daily_update_model.dart';

class DailyUpdateServices {
  //to DailyUpdateServices
   fetchDailyUpdates() async {
    final http.Response? response =
        await NetworkClient().getRequest(path: ApiEndpoints.fetchDailyUpdate);

    List<DailyUpdateModel> DailyUpdates = [];
    if (response != null && response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      json['data'].forEach((e) {
        DailyUpdateModel dailyUpdate = DailyUpdateModel.fromJson(e);
        DailyUpdates.add(dailyUpdate);
      });
    }
    return DailyUpdates;
  }
}
