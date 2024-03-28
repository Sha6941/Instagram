

import 'package:flutter/material.dart';
import 'package:instagram/Instagram/messages.dart';
import 'package:instagram/noti.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset("assets/image/instaaaa.png",scale: 40,),
                ),
                SizedBox(width: 125,),
                IconButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Notfication(),));
                }, icon: Icon(Icons.favorite_border,size: 30,)),
                SizedBox(width: 10,),
                IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Messages(),));
                }, icon: Icon(Icons.chat_bubble_outline_outlined,size: 30,))
              ],
            ),
           SizedBox(height: 15,),
           Container(
             height: 100,
             child: ListView.separated(separatorBuilder: (context, index) {
               return SizedBox(width: 15,);
             },scrollDirection: Axis.horizontal,
               itemCount: 10,
               shrinkWrap: true,
               itemBuilder: (context, index) {
                 bool hasIcon = index == 2;
               final images=["assets/image/sha.jpg","assets/image/khabib.jpg","assets/image/tom.webp","assets/image/burack.jpg","assets/image/dhoni.jpg","assets/image/jeff.webp","assets/image/jackie.jpg","assets/image/bill.webp","assets/image/peter.jpeg","assets/image/obama.webp",];
               final names=["Your story","Khabib","Tom","Csn Burack","MS Dhoni","Jeff","Jackie","Bill","Peter","Obama"];
                 return Column(
                   children: [
                     Container(
                         child:
                         CircleAvatar(
                           radius:40,
                           backgroundColor: Colors.red[200],
                           child: CircleAvatar(
                             // child: Padding(
                             //   padding: const EdgeInsets.only(left: 50,top: 45),
                             //   child: Icon(Icons.add_circle),
                            // ),
                             backgroundImage: AssetImage("${images[index]}"), radius: 37,),
                         )),
                     Text("${names[index]}")
                   ],
                 );
               },

             ),
           ),
            Divider(),
                 Container(
                  height: 350,
                  width: 500,
                  decoration: BoxDecoration(
                  ),
                  child: Column(children: [
                    Row(children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/image/dhoni.jpg"),radius: 25,),
                      SizedBox(width: 10,),
                      Text("MS Dhoni",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width:235 ,),
                      PopupMenuButton(
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
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.account_circle_outlined,color: Colors.black,), label: Text("About this account",style: TextStyle(color: Colors.black),)),
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.announcement_outlined,color: Colors.red,), label: Text("Report",style: TextStyle(color: Colors.red),)),
                        ),
                        ],
                      )
                    ],),
                    SizedBox(height: 10,),
                    Image(image: AssetImage("assets/image/dhonii.jpg")),
                    Row(children: [
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.favorite_border,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.mode_comment_outlined,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.send,size: 25,)),
                      SizedBox(width: 200,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.bookmark_border,size: 25,)),

                    ],)
                  ],),
                ) ,
                 Container(
                  height: 400,
                  width: 500,
                  decoration: BoxDecoration(
                  ),
                  child: Column(children: [
                    Row(children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/image/tom.webp"),radius: 25,),
                      SizedBox(width: 10,),
                      Text("Tom          ",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width:230 ,),
                      PopupMenuButton(
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
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.account_circle_outlined,color: Colors.black,), label: Text("About this account",style: TextStyle(color: Colors.black),)),
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.announcement_outlined,color: Colors.red,), label: Text("Report",style: TextStyle(color: Colors.red),)),
                        ),
                        ],
                      )
                    ],),
                    SizedBox(height: 10,),
                    Image(image: AssetImage("assets/image/Tomm.jpg",)),
                    Row(children: [
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.favorite_border,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.mode_comment_outlined,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.send,size: 25,)),
                      SizedBox(width: 200,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.bookmark_border,size: 25,)),

                    ],)
                  ],),
                ),
                 Container(
                  height: 350,
                  width: 500,
                  decoration: BoxDecoration(
                  ),
                  child: Column(children: [
                    Row(children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/image/khabib.jpg"),radius: 25,),
                      SizedBox(width: 10,),
                      Text("MS Dhoni",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width:230 ,),
                      PopupMenuButton(
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
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.account_circle_outlined,color: Colors.black,), label: Text("About this account",style: TextStyle(color: Colors.black),)),
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.announcement_outlined,color: Colors.red,), label: Text("Report",style: TextStyle(color: Colors.red),)),
                        ),
                        ],
                      )
                    ],),
                    SizedBox(height: 10,),
                    Image(image: AssetImage("assets/image/khabibbb.png")),
                    Row(children: [
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.favorite_border,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.mode_comment_outlined,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.send,size: 25,)),
                      SizedBox(width: 200,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.bookmark_border,size: 25,)),

                    ],)
                  ],),
                ),
                 Container(
                  height: 350,
                  width: 500,
                  decoration: BoxDecoration(
                  ),
                  child: Column(children: [
                    Row(children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/image/obama.webp"),radius: 25,),
                      SizedBox(width: 10,),
                      Text("Obama",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width:250 ,),
                      PopupMenuButton(
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
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.account_circle_outlined,color: Colors.black,), label: Text("About this account",style: TextStyle(color: Colors.black),)),
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.announcement_outlined,color: Colors.red,), label: Text("Report",style: TextStyle(color: Colors.red),)),
                        ),
                        ],
                      )
                    ],),
                    SizedBox(height: 10,),
                    Image(image: AssetImage("assets/image/OB.jpg")),
                    Row(children: [
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.favorite_border,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.mode_comment_outlined,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.send,size: 25,)),
                      SizedBox(width: 200,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.bookmark_border,size: 25,)),

                    ],)
                  ],),
                ),
                 Container(
                  height: 400,
                  width: 500,
                  decoration: BoxDecoration(
                  ),
                  child: Column(children: [
                    Row(children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/image/burack.jpg"),radius: 25,),
                      SizedBox(width: 10,),
                      Text("Csn Burack",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width:220 ,),
                      PopupMenuButton(
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
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.account_circle_outlined,color: Colors.black,), label: Text("About this account",style: TextStyle(color: Colors.black),)),
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.announcement_outlined,color: Colors.red,), label: Text("Report",style: TextStyle(color: Colors.red),)),
                        ),
                        ],
                      )
                    ],),
                    SizedBox(height: 10,),
                    Image(image: AssetImage("assets/image/CSN.jpg")),
                    Row(children: [
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.favorite_border,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.mode_comment_outlined,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.send,size: 25,)),
                      SizedBox(width: 200,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.bookmark_border,size: 25,)),

                    ],)
                  ],),
                ),
                 Container(
                  height: 400,
                  width: 500,
                  decoration: BoxDecoration(
                  ),
                  child: Column(children: [
                    Row(children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/image/jackie.jpg"),radius: 25,),
                      SizedBox(width: 10,),
                      Text("Jackie",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width:250 ,),
                      PopupMenuButton(
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
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.account_circle_outlined,color: Colors.black,), label: Text("About this account",style: TextStyle(color: Colors.black),)),
                        ),PopupMenuItem(child:
                        TextButton.icon(onPressed: () {

                        }, icon: Icon(Icons.announcement_outlined,color: Colors.red,), label: Text("Report",style: TextStyle(color: Colors.red),)),
                        ),
                        ],
                      )
                    ],),
                    SizedBox(height: 10,),
                    Image(image: AssetImage("assets/image/JAA.jpg")),
                    Row(children: [
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.favorite_border,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.mode_comment_outlined,size: 25,)),
                      SizedBox(width: 5,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.send,size: 25,)),
                      SizedBox(width: 200,),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.bookmark_border,size: 25,)),

                    ],)
                  ],),
                ),

          ],
        ),
      ),
    );
  }
}
