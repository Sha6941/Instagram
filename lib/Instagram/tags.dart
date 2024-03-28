import 'package:flutter/material.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
            SizedBox(height: 280,),
            CircleAvatar(radius: 40,backgroundColor:Colors.black,child: CircleAvatar(radius: 39,backgroundColor: Colors.white,
            child: Icon(Icons.person_pin_outlined,size: 45,),),),
              SizedBox(height: 10,),
              Text("Photos and videos of you",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 15,),
              Text("When people tag you in photos and videos,\n                      they'll appear here")

          ],),
        ),
      ),
    );
  }
}
