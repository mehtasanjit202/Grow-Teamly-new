import 'package:flutter/material.dart';

class ScreeningPadding extends StatelessWidget {
  final Widget child;
  const ScreeningPadding({ Key? key, required this.child,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding( padding: EdgeInsets.symmetric(horizontal: 10),child: child,    
    );
  }
}