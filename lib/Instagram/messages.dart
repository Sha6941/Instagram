import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shabic Roshan",style: TextStyle(fontWeight: FontWeight.bold),),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 55),
            child: Icon(Icons.arrow_drop_down_outlined,),
          ),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.videocam_outlined,size: 30,)),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.mode_edit_outlined,size: 30,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: 50,
              child: SearchBar(
                leading: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(right: 270,top: 30),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/sha.jpg",),radius:40,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text("Your note"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Messages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                TextButton(onPressed: () {
        
                }, child: Text("Requests",style: TextStyle(color: Colors.blue[500],fontWeight: FontWeight.bold,fontSize: 20),))
              ],),
            ),
            ListTile(
              leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/boy.png"),),
              title: Text("Bond",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("Hey are you there??"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,size: 30,)),
            ),ListTile(
              leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/g5.png")),
              title: Text("Teena",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("i'll be there.."),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,size: 30,)),
            ),ListTile(
              leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/g2.png")),
              title: Text("Angel",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Seen"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,size: 30,)),
            ),ListTile(
              leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/men.png")),
              title: Text("David",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("ok.cmn"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,size: 30,)),
            ),ListTile(
              leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/g7.jpg")),
              title: Text("Monica",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("yeah..sure"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,size: 30,)),
            ),ListTile(
              leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/man.png")),
              title: Text("Tate",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Seen last week"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,size: 30,)),
            ),ListTile(
              leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/uncle.png")),
              title: Text("John",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Sent"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,size: 30,)),
            ),

            ListTile(
              leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/g1.png")),
              title: Text("Christina",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Seen"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,size: 30,)),
            ),
          ],),
        ),
      ),
    );
  }
}
