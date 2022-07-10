import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:profileapp/app/decoration/input_decoration.dart';
import 'package:profileapp/app/widget/sreening_padding.dart';
import 'package:profileapp/app/widget/text_field_widget.dart';

class AddDailyUpdateView extends StatefulWidget {
  const AddDailyUpdateView({Key? key}) : super(key: key);

  @override
  State<AddDailyUpdateView> createState() => _AddDailyUpdateViewState();
}

class _AddDailyUpdateViewState extends State<AddDailyUpdateView> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _titleController= TextEditingController();
  final TextEditingController _descriptionController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" ADD Daily Update "),
        centerTitle: true,
      ),
      body: ScreeningPadding(
        child: Column(
          children: [
            SizedBox(height: 20,),
           DefaultTextField(controller: _dateController, labelText: "Date",
            suffixIcon: InkWell(
              onTap: () async{
               final date = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now().subtract(Duration(days: 365)), lastDate: DateTime.now().add(Duration(days: 365)));
               if (date != null){
                _dateController.text = date.toString();
               }
              },
              child: Icon(Icons.calendar_month)),)
,              
            
            
            
            SizedBox(height: 30,),
             DefaultTextField(controller: _titleController, labelText: "Enter a title"),
            SizedBox(height: 100,),
           DefaultTextField(controller: _descriptionController, labelText: "Description"),
            
            ElevatedButton(
              onPressed: () {
                log(_dateController.text+_titleController.text+_descriptionController.text);
      
                
              },
              child: const Text("print"),
            )
          
          ],
        ),
      ),
    );
  }
}
