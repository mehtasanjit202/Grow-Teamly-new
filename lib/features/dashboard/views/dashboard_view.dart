import 'package:flutter/material.dart';
import 'package:profileapp/features/daily_updates/views/dailyupdate_view.dart';
import 'package:profileapp/features/dashboard/model/dashboard_card.dart';
import 'package:profileapp/features/dashboard/services/dashboard_services.dart';
import 'package:profileapp/features/dashboard_data/dashboard_card2.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  DashboardCardModel? dashboardCard;
  bool _isloading = true;
  @override
  void initState() {
    super.initState();
    fetchDashboardCardData();
  }

  fetchDashboardCardData() async {
    DashboardCardModel? response =
        await DashboardServices().fetchDashboardCardData();
    dashboardCard = response;
    _isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboardview",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: _isloading
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.redAccent,
              ),
            )
          : Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DashboardCard(
                          icon: Icon(Icons.home,color: Colors.yellow,),
                          title: "My leave balance",
                          count: dashboardCard!.myleavebalance.toString()),
                      SizedBox(
                        width: 50,
                      ),
                      DashboardCard(icon: Icon(Icons.timeline,color: Colors.red,), title:"My missing checkout", count: dashboardCard!.mymissingcheckoutcount.toString()),
                      SizedBox(height: 10,),
                     
                      
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DashboardCard(
                          icon: Icon(Icons.home,color: Colors.yellow,),
                          title: "My leave balance",
                          count: dashboardCard!.myleavebalance.toString()),
                      SizedBox(
                        width: 50,
                      ),
                      DashboardCard(icon: Icon(Icons.timeline,color: Colors.red,), title:"My missing checkout", count: dashboardCard!.mymissingcheckoutcount.toString()),
                      SizedBox(height: 10,),
                     
                      
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    
                    children: [
                      SizedBox(width: 20,),
                      DashboardCard(
                          icon: Icon(Icons.home,color: Colors.yellow,),
                          title: "My leave balance",
                          count: dashboardCard!.myleavebalance.toString()),
                      SizedBox(
                        width: 50,
                      ),
                      
                     
                      
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
