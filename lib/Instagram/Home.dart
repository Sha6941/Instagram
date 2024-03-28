import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Instagram/add.dart';
import 'package:instagram/Instagram/home1.dart';
import 'package:instagram/Instagram/prfile.dart';
import 'package:instagram/Instagram/reels.dart';
import 'package:instagram/Instagram/search.dart';

class Homeee extends StatefulWidget {
  const Homeee({super.key});

  @override
  State<Homeee> createState() => _HomeeeState();
}

class _HomeeeState extends State<Homeee> {
  
  int currendindex=0;
  final List<Widget> pages=[
  Home1(),
    Search(),
    Addd(),
    Reels(),
    Profile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currendindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currendindex,
          type: BottomNavigationBarType.fixed,

          onTap: (index){
            setState(() {
              currendindex=index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,color: Colors.black,size: 30,),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black,size: 30,),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined,color: Colors.black,size:30,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_outlined,color: Colors.black,size: 30,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:
              CircleAvatar(backgroundImage: AssetImage("assets/image/sha.jpg"),radius: 15,
              ),
              label: ""
            )

          ],


        )
    );
  }
}
