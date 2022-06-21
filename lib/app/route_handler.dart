import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profileapp/app/routes.dart';
import 'package:profileapp/constants/pages/dummy_pages.dart';
import 'package:profileapp/home_page.dart';
import 'package:profileapp/login_page.dart';
import 'package:flutter/material.dart';

class RouteHandler{
 static Route<dynamic> generateRoute(RouteSettings settings){
  var arguments =settings.arguments;
    switch(settings.name){
      case AppRoutes.loginRoute:
      return MaterialPageRoute(builder: ((context) =>const Loginpage()));
      case AppRoutes.homeRoute:
       return MaterialPageRoute(builder: ((context) =>const Homepage()));
       case AppRoutes.dummyRoute:
       return MaterialPageRoute(builder: ((context) => DummyPage(value: arguments as String,)));
       default:
        return MaterialPageRoute(builder: ((context) =>const Loginpage()));

    }
    
  }
}