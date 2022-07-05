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
    if (mounted)setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboardview",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: _isloading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.redAccent,
              ),
            )
          : dashboardCard == null
              ? const Center(
                  child: Text("Something went wrong"),
                )
              : Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        spacing: 40,
                        runSpacing: 10,

                        // mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          DashboardCard(
                              icon: const Icon(
                                Icons.home,
                                color: Colors.yellow,
                              ),
                              title: "My leave balance",
                              count: dashboardCard!.myleavebalance.toString()),
                          DashboardCard(
                              containerColor: Colors.greenAccent,
                              icon: const Icon(
                                Icons.timeline,
                                color: Colors.red,
                              ),
                              title: "My missing checkout",
                              count: dashboardCard!.mymissingcheckoutcount
                                  .toString()),
                          DashboardCard(
                              containerColor: Colors.red,
                              icon: const Icon(
                                Icons.contact_phone,
                                color: Colors.yellow,
                              ),
                              title: "My ghost count",
                              count: dashboardCard!.myghostcount.toString()),
                          DashboardCard(
                              icon: const Icon(
                                Icons.mail,
                                color: Colors.red,
                              ),
                              title: "My no daily updates",
                              count:
                                  dashboardCard!.mynodailyUpdates.toString()),
                          DashboardCard(
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.yellow,
                              ),
                              title: "My not acknowledge",
                              count:
                                  dashboardCard!.mynotacknowledged.toString()),
                        ],
                      ),
                    ],
                  ),
                ),
    );
  }
}
