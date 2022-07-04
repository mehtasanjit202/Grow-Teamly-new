import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppSnacks {
  //to show snackbar
  static showSnacksBar(BuildContext context, {String message = "success"}) {
    Content:
    Text("logged in");

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

//to show error toast
static  showErrorToast(String message){
   Fluttertoast.showToast(
                            msg: message,
                            backgroundColor: Colors.red,
                            fontSize: 30,
                            gravity: ToastGravity.BOTTOM,
                            textColor: Colors.yellow,
                            toastLength: Toast.LENGTH_SHORT);

}
//to show successtoast
static showSuccessToast(String message){
   Fluttertoast.showToast(
                            msg: message,
                            backgroundColor: Colors.red,
                            fontSize: 30,
                            gravity: ToastGravity.BOTTOM,
                            textColor: Colors.green,
                            toastLength: Toast.LENGTH_SHORT);
                      
}

}