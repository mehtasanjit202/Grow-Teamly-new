
import 'package:flutter/material.dart';

class AppSnacks {
  //to show snackbar
 static showSnacksBar(
   BuildContext context,
   {
   
   String message="success"}) {
     Content:Text("logged in");

      ScaffoldMessenger.of(context)
          .showSnackBar (SnackBar(content: Text(message),));
    }
  }

