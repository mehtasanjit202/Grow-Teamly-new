import 'package:flutter/material.dart';
import 'package:profileapp/features/daily_updates/model/daily_update_model.dart';
import 'package:profileapp/features/daily_updates/services/daily_update_services.dart';

class DailyUpdateView extends StatefulWidget {
  const DailyUpdateView({Key? key}) : super(key: key);

  @override
  State<DailyUpdateView> createState() => _DailyUpdateViewState();
}

class _DailyUpdateViewState extends State<DailyUpdateView> {
  List<DailyUpdateModel> dailyUpdates = [];
  bool _isLoading =true;
  @override
  void initState() {
    super.initState();
    fetchDailyUpdates();
  }

  fetchDailyUpdates() async {
    DailyUpdateServices dailyUpdate = DailyUpdateServices();
    dailyUpdates = await dailyUpdate.fetchDailyUpdates();
    _isLoading =false;
    if(mounted)
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Dailyupdate",
          style: TextStyle(color: Colors.yellowAccent),
        ),
        centerTitle: true,
      ),
      body: _isLoading ? const CircularProgressIndicator() : ListView.separated(
        separatorBuilder: (BuildContext context, index) =>const Divider(),
        itemCount: dailyUpdates.length,
        itemBuilder: (BuildContext context, int index){
return ListTile(
  title: Text(dailyUpdates[index].title ?? ""),
  subtitle:   Text(dailyUpdates[index].description ?? ""),
  
);
        },
      ),
    );
  }
}
