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
      body: Stack(
        children: [
          Container(
            height: 900,
            child: Image.asset("assets/image/nature3.webp",fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 650),
            child: Container(child: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/nature4.jpg"),),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80,top: 670),
            child: Text("nature",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140,top: 657),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,minimumSize:Size(80, 35), shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.white)
                )),
                onPressed: () {

            }, child: Text("Follow",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 360,top: 20),
            child: Column(
              children: [
                IconButton(onPressed: () {

                }, icon: Icon(Icons.photo_camera_outlined,color: Colors.white,size: 30,)),
                SizedBox(height: 380,),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.favorite_border,color: Colors.white,size: 30,)),
                Text("57.3k",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.mode_comment_outlined,color: Colors.white,size: 30,)),
                Text("8,500",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.send,color: Colors.white,size: 30,)),
                Text("2,458",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 360,top: 685),
            child: PopupMenuButton(
              iconColor: Colors.white,
              // offset: Offset(0,35),
              itemBuilder: (context) =>
              [
                PopupMenuItem(child:
                TextButton.icon(onPressed: () {

                }, icon: Icon(Icons.send,color: Colors.black,), label: Text("We're moving things around",style: TextStyle(color: Colors.black),)),
                ),PopupMenuItem(child:
              TextButton.icon(onPressed: () {

              }, icon: Icon(Icons.star_border_purple500_outlined,color: Colors.black,), label: Text("Add to favorites",style: TextStyle(color: Colors.black),)),
              ),PopupMenuItem(child:
              TextButton.icon(onPressed: () {

              }, icon: Icon(Icons.person_remove_alt_1_outlined,color: Colors.black,), label: Text("Unfollow",style: TextStyle(color: Colors.black),)),
              ),PopupMenuItem(child:
              TextButton.icon(onPressed: () {

              }, icon: Icon(Icons.info_outline,color: Colors.black,), label: Text("Why you're seeing this post",style: TextStyle(color: Colors.black),)),
              ),PopupMenuItem(child:
              TextButton.icon(onPressed: () {

              }, icon: Icon(Icons.visibility_off_outlined,color: Colors.black,), label: Text("Hide",style: TextStyle(color: Colors.black),)),
              ), PopupMenuItem(child:
              TextButton.icon(onPressed: () {

              }, icon: Icon(Icons.account_circle_outlined,color: Colors.black,),
                  label: Text("About this account",style: TextStyle(color: Colors.black),)),
              ),
                PopupMenuItem(child:
              TextButton.icon(onPressed: () {

              }, icon: Icon(Icons.announcement_outlined,color: Colors.red,),
                  label: Text("Report",style: TextStyle(color: Colors.red),)),
              ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 730),
            child: Row(
              children: [
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,minimumSize: Size(10,30)

                    ),
                    onPressed: () {

                }, icon: Icon(Icons.music_note,size: 18,color: Colors.white,),
                    label: Text("nature. Original audio",style: TextStyle(color: Colors.white),)),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,minimumSize: Size(40,30)

                    ),
                    onPressed: () {

                    }, icon: Icon(Icons.location_on,size: 18,color: Colors.white,),
                    label: Text("Jordan",style: TextStyle(color: Colors.white),)),
                SizedBox(width: 55,),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.white)),
                  child: Container(
                      height: 27,
                      child: Image.asset("assets/image/nature4.jpg",fit: BoxFit.cover,)),
                )

              ],
            ),
          ),
        ],
      )
    );
  }
}
