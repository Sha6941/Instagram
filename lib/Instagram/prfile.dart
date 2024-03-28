import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/Instagram/myreels.dart';
import 'package:instagram/Instagram/post.dart';
import 'package:instagram/Instagram/tags.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: TextButton.icon(onPressed: () {

                  }, icon: Icon(Icons.lock_outlined,color: Colors.black,),
                      label: Text("shabic_roshan",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                SizedBox(width: 85,),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined,size: 30,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.menu,size: 30,)),
                )
              ],),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(radius: 40,backgroundImage: AssetImage("assets/image/sha.jpg"),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60,top: 45),
                          child: Icon(Icons.add_circle,color: Colors.blue,size: 25,),
                        ),),
                        SizedBox(height: 10,),
                        Text("Shabic Roshan",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                      ],),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Text("0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),) ,
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35),
                          child: Text("posts",
                            style: TextStyle(color: Colors.black,),),
                        ),
                      ],),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text("415",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),) ,
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35),
                          child: Text("followers",
                            style: TextStyle(color: Colors.black,),),
                        ),
                      ],),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text("710",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),) ,
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35),
                          child: Text("following",
                            style: TextStyle(color: Colors.black,),),
                        ),
                      ],),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[200],minimumSize: Size(165, 40),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                      onPressed: () {

                      }, child: Text("Edit profile",style: TextStyle(color: Colors.black),)),
                  SizedBox(width: 10,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[200],minimumSize: Size(165, 40),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                      onPressed: () {

                      }, child: Text("Share profile",style: TextStyle(color: Colors.black))),
                  Container(
                    height: 50,
                    child: Card(
                      color: Colors.grey[200],
                      child: IconButton(onPressed: () {

                      }, icon: Icon(Icons.person_add_outlined)),
                    ),
                  )
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Column(children: [
                      InkWell(
                        child: CircleAvatar(radius: 40,backgroundColor: Colors.black,
                          child: CircleAvatar(backgroundColor: Colors.white,radius: 39,
                            child: IconButton(onPressed: () {

                            }, icon: Icon(Icons.add,size: 30,)),
                          ),
                        ),
                        onTap: (){},
                      ),
                      Text("New")
                    ],),
                  ],
                ),
              ),
              TabBar(tabs: [
                Tab(icon: Padding(
                  padding: const EdgeInsets.only(right:0),
                  child: Icon(Icons.calendar_view_month,size: 30,color: Colors.black,),
                )
                ),Tab(icon: Padding(
                  padding: const EdgeInsets.only(right:0),
                  child: Icon(Icons.movie_outlined,size: 30,color: Colors.black,),
                )
                ),Tab(icon: Padding(
                  padding: const EdgeInsets.only(right:0),
                  child: Icon(Icons.person_pin_outlined,size: 30,color: Colors.black,),
                )
                ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  Post(),
                  Reels(),
                  Tags()
                ]),
              ),
            ],
          ),
        )
    ));
  }
}
