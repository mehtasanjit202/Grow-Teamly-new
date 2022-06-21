import 'package:flutter/material.dart';
class Dashboard_DataView extends StatefulWidget {
  const Dashboard_DataView({ Key? key }) : super(key: key);

  @override
  State<Dashboard_DataView> createState() => _Dashboard_DataViewState();
}

class _Dashboard_DataViewState extends State<Dashboard_DataView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard_DataView",style: TextStyle(color: Colors.greenAccent),),
        centerTitle: true,
      ),
      
    );
  }
}