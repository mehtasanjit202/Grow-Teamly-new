import 'package:flutter/material.dart';

class DailyUpdateModel {
  int? id;
  int? userId;
  String? title;
  String? description;
  String? projectId;
  String? acknowledgedAt;
  DailyUpdateModel({
    this.id,
    this.title,
    this.projectId,
    this.description,
    this.acknowledgedAt,

  });

  DailyUpdateModel. fromJson(Map<String,dynamic> json){
    id= json['id'];
    userId= json['user_id'];
    title=json['title'];
    projectId= json['project_id'];
    description=json['description_id'];
    acknowledgedAt=json['acknowledge_at'];
  }

}