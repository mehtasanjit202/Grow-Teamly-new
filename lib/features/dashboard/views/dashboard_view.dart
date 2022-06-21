import 'package:flutter/material.dart';
class DashboardView extends StatefulWidget {
  const DashboardView({ Key? key }) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboardview",style: TextStyle(fontSize: 20,color: Colors.red),),
        centerTitle: true,
      ),
      
    );
  }
}