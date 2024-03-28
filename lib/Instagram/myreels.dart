import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 20,),
        Center(child: Text("Share a moment with th world",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
        TextButton(onPressed: () {

        }, child: Text("Create your first reel",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue[300]),))
      ],),
    );
  }
}
