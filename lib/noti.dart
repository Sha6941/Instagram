import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Notfication extends StatefulWidget {
  const Notfication({super.key});

  @override
  State<Notfication> createState() => _NotficationState();
}

class _NotficationState extends State<Notfication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(onPressed: () {

            }, child:Text("Filter",style: TextStyle(fontSize: 20,color: Colors.blue[500]),)),
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
          ),
          child: Column(children: [
               ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,radius: 30,
                    child: CircleAvatar(child: Icon(Icons.person_add_outlined,size: 30,),
                      radius: 27,backgroundColor: Colors.white, ),
                  ),
                  title: Text("Follow requests",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Approve or ignore requests"),
                  onTap: (){},
                ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 330),
              child: Text("Today",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ),
            SizedBox(height: 10,),
             ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/khabib.jpg"),),
                  title: Text("Khabib",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text("invited you to join their brodcast channel.")
                 ),
            SizedBox(height: 15,),ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/dhoni.jpg"),),
                  title: Text("Dhoni",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text("invited you to join their brodcast channel.")
                 ),
            SizedBox(height: 15,),ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/burack.jpg"),),
                  title: Text("Burack",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text("invited you to join their brodcast channel.")
                 ),
            SizedBox(height: 15,),ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/jackie.jpg"),),
                  title: Text("Jackie",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text("invited you to join their brodcast channel.")
                 ),
            SizedBox(height: 15,),ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/tom.webp"),),
                  title: Text("Tom",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text("invited you to join their brodcast channel.")
                 ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Last 7 days",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ),
            SizedBox(height: 15,),
            ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/boy.png")),
                  title: Text("Bond",style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 85),
                    child: Text("liked your comment.",style: TextStyle(fontSize: 15),),
                  ),
                ),
            SizedBox(height: 15,),
            ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/g5.png")),
                  title: Text("Teena",style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 75),
                    child: Text("started following you.",style: TextStyle(fontSize: 15),),
                  ),
                ),
            SizedBox(height: 15,),
            ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/g2.png")),
                  title: Text("Angel",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 85),
                    child: Text("liked your comment.",style: TextStyle(fontSize: 15),),
                  ),
                ),
            SizedBox(height: 15,),
            //Text("Last 7 days",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Last 30 days",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ),
            SizedBox(height: 15,),
        ListTile(
          leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/image/g7.jpg")),
          title: Text("Monica",style: TextStyle(fontWeight: FontWeight.bold),),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 65),
            child: Text("started following you.",style: TextStyle(fontSize: 15),),
          ),)
          ],),
       ),
     )
   );
  }
}
