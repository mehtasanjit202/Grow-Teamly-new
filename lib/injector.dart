import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
final locator = GetIt.instance;

SetupLocator() async{
  SharedPreferences _prefs= await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(_prefs);

}