import 'package:flutter/material.dart';
import 'package:profileapp/features/dashboard/model/dashboard_card.dart';
import 'package:profileapp/features/dashboard/services/dashboard_services.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  DashboardCardModel? dashboardCard;
  bool _isloading =true;
  @override
  void initState() {
    super.initState();
    fetchDashboardCardData();
  }

  fetchDashboardCardData() async {
    DashboardCardModel? response =
        await DashboardServices().fetchDashboardCardData();
    dashboardCard = response;
    _isloading =false;
    setState(() {
      
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboardview",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: _isloading ? Center(
        child: CircularProgressIndicator(color: Colors.redAccent,) ,
      ) : Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text(dashboardCard!.mymissingcheckoutcount.toString(),style: TextStyle(
                    color: Colors.redAccent, fontSize: 20
                  ),)),
                SizedBox(width: 50,),
                Text(dashboardCard!.myleavebalance.toString())
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
