import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 20,),
        Center(child: Text("Capture the moment with a friend",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
        TextButton(onPressed: () {

        }, child: Text("Create your first post",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue[300]),))
      ],),
    );
  }
}
