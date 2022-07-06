import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:profileapp/helpers/image_picker_helper.dart';

class AttendanceView extends StatefulWidget {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  State<AttendanceView> createState() => _AttendanceViewState();
}

class _AttendanceViewState extends State<AttendanceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Attendence"),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
                  context: context,
                  builder: (context) {
                    return SizedBox(
                     // height: 220,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           ListTile(
                            onTap: () async{
                               ImagePickerHelper().pickImage(ImageSource.camera);
                             
                              // if (kDebugMode)
                              // print("Camera tap");
                            },
                            
                            leading:const Icon(Icons.camera_alt),

                            title:const  Text("camera"),
                          ),
                           ListTile(
                            onTap: ()async {
                              ImagePickerHelper().pickImage(ImageSource.gallery);
                            
                            },
                            leading:const Icon(Icons.photo_sharp),
                            title:const Text("Gallery"),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: const Text(
              "pick an image",
            )),
      ]),
    );
  }
}
