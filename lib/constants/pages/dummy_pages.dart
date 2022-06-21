import 'package:flutter/material.dart';
class DummyPage extends StatefulWidget {
  final String value;
  const DummyPage({ Key? key,required this.value }) : super(key: key);

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.value),
      ),
      
    );
  }
}