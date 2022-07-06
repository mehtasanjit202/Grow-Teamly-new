import 'package:flutter/material.dart';
import 'package:profileapp/Home_page.dart';
import 'package:profileapp/app/route_handler.dart';
import 'package:profileapp/app/routes.dart';
import 'package:profileapp/login_page.dart';
import 'package:profileapp/constants/app_constants.dart';
import 'package:profileapp/injector.dart';
import 'package:profileapp/providers/auth_provider.dart';
import 'package:profileapp/providers/counter_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SetupLocator();
  String? token=locator.get <SharedPreferences>().getString(AppConstants.token);

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: ((context) => CounterProvider())),
    ChangeNotifierProvider(create: ((context) => AuthProvider())),
  ], child: MyApp( token:token,)));
}

class MyApp extends StatelessWidget {
  final String? token;
   MyApp({Key? key, this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grow Teamly",
      navigatorKey: AppSetting.navigatorkey,
      onGenerateRoute: RouteHandler.generateRoute,
     // home: token != null ? Homepage(): Loginpage(),
     initialRoute: token != null ? AppRoutes.homeRoute:AppRoutes.loginRoute,
      debugShowCheckedModeBanner: false,

    );
  }
  
}



class AppSetting{
    static GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();
  }