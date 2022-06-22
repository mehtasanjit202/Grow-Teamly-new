import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profileapp/features/profile/model/dummy_page_model.dart';
import 'package:profileapp/image-constants.dart';
class DummyPage extends StatefulWidget {
  final DummyPageModel data;
  const DummyPage({ Key? key,required this.data }) : super(key: key);

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("(widget.data.age)"),
        // title: Text("(widget.data.name) is  the value"),
      ),
      body: Center(
        child: SvgPicture.asset(
          ImageConstants.war,
          height: 200,
        ),
       ),

      // body: Center(
        
      //   child: Column(
          
      //     children: [
      //       Text(widget.data.name)
      //     ],
          
      //   ),
      // ),
      
    );
  }
}