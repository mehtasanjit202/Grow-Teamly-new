class DashboardCardModel{
  int? mymissingcheckoutcount;
  int? myghostcount;
  int? myleavebalance;
  int? mynodailyUpdates;
  String? mynotacknowledged;

  DashboardCardModel({
    required this.mymissingcheckoutcount,
    required this.myghostcount,
    required this.myleavebalance,
    required this.mynodailyUpdates,
    required this.mynotacknowledged
  });

DashboardCardModel. fromJson(Map<String,dynamic> Json){
   mymissingcheckoutcount =Json['my_missing_checkout_count'];
   myghostcount =Json['my_ghost_count'];
   myleavebalance =Json['my_leave_balance_count'];
   mynodailyUpdates =Json['my_no_dailyUpdates_count'];
   mynotacknowledged =Json['my_not_acknowledge_dailyUpdates_count'];


}


}