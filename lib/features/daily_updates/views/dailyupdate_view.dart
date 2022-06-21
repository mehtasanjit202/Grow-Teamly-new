import 'package:flutter/material.dart';

class DailyUpdateView extends StatefulWidget {
  const DailyUpdateView({ Key? key }) : super(key: key);

  @override
  State<DailyUpdateView> createState() => _DailyUpdateViewState();
}

class _DailyUpdateViewState extends State<DailyUpdateView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dailyupdate",style: TextStyle(color: Colors.yellowAccent),),
        centerTitle: true,
      ),
      
    );
  }
}