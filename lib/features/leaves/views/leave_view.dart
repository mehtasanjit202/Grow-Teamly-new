import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LeaveView extends StatefulWidget {
  const LeaveView({Key? key}) : super(key: key);

  @override
  State<LeaveView> createState() => _LeaveViewState();
}

class _LeaveViewState extends State<LeaveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Leaveview"),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          height: 70,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.greenAccent, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SizedBox(width: 5,),
              Expanded(
                  child: TextFormField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintText: "search",
                    labelText: "New",
                    filled: true,
                    fillColor: Colors.white),
              )),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          ),
        ),
        Expanded(
          child: CachedNetworkImage(
            imageUrl:
                "https://thumbs.dreamstime.com/z/random-word-concept-cubes-171151178.jpg",
            height: 200,
            width: 200,
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, progess) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
            )),
        const Expanded(flex: 2, child: Text("hellow")),
      ]),
    );
  }
}
