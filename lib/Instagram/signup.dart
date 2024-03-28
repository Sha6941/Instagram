import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/Instagram/Learnmore.dart';
import 'package:instagram/Instagram/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset("assets/image/instaaaa.png",scale: 32,),
          )),
          Text("Sign up to see photos and videos\n             from your friends.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
          SizedBox(height: 25,),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,minimumSize: Size(370, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              onPressed: () {
            
          }, icon: Icon(Icons.facebook,color: Colors.white,), label: Text("Log in with Fcaebook",style: TextStyle(color: Colors.white),)),
          SizedBox(height: 20,),
          Row(children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Divider(),
            )),
            Text("OR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 20),
              child: Divider(),
            )),
          ],),
          SizedBox(height: 20,),
          Container(
            width: 370,
            height: 50,
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              hintText: "Mobile Number or Email",
            ),),
          ),
          SizedBox(height: 15,),
          Container(
            width: 370,
            height: 50,
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              hintText: "Full Name",
            ),),
          ),
          SizedBox(height: 15,),
          Container(
            width: 370,
            height: 50,
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              hintText: "Username",
            ),),
          ),
          SizedBox(height: 15,),
          Container(
            width: 370,
            height: 50,
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              hintText: "Password",
            ),),
          ),
             SizedBox(height: 15,),
             Text("People who use our services may have uploaded\n        your contact information to instagram.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
          TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  Learnnn(),));
          }, child: Text("Learn More",style: TextStyle(color: Colors.blue[1300]),))
        ,Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text("By signing up,you agree to our",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
          ),
            Container(
              height: 35,
              child: TextButton(onPressed: () {

              }, child: Text("Terms , Privacy",style: TextStyle(color: Colors.blue[1000]),)),
            )
        ],),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: TextButton(onPressed: () {

              }, child: Text("Policy",style: TextStyle(color: Colors.blue[1000]),)),
            ),
          Text("and",style: TextStyle(color: Colors.blue[1000]),),
            TextButton(onPressed: () {

            }, child: Text("Cookies and Policy",style: TextStyle(color: Colors.blue[1000]),))
          ],),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[300],minimumSize: Size(370, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              onPressed: () {

          }, child: Text("Sign up",style: TextStyle(color: Colors.white),))
       ,Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Text("Have an account?",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            TextButton(onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Instagram(),));
            }, child: Text("Login",style: TextStyle(color: Colors.blue[1000]),))
       ],)
        ],
      )
    );
  }
}
