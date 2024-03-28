import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gettt extends StatefulWidget {
  const Gettt({super.key});

  @override
  State<Gettt> createState() => _GetttState();
}

class _GetttState extends State<Gettt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login help",style: TextStyle(fontWeight: FontWeight.bold)),
      // ),
          body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 280,top:50),
                child: Text("Login help",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ),
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Text("Find your account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
              )),
               SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Text("Enter your username or the email or phone number linked\n                                   "
                    "to your account."),
              ),
              SizedBox(height: 30,),
              Container(
                width: 370,
                height: 50,
                child: TextField(decoration: InputDecoration(
            
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  hintText: "Username, email or phone"
                ),),
              ),
              SizedBox(height: 18,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[200],minimumSize:Size(370, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
            
              }, child: Text("Next",style: TextStyle(color: Colors.white),)),
              SizedBox(height:15,),
            
              TextButton(onPressed: () {
            
              }, child: Text("Can't reset your password?",style: TextStyle(color: Colors.blue),)),
              SizedBox(height: 20,),
            
              Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: Divider(),
                  )),
                  Text("OR"),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 20),
                    child: Divider(),
                  )),
                ],
              ),
              SizedBox(height: 15,),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(minimumSize: Size(370, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
            
              }, icon: Icon(Icons.facebook,color: Colors.black,), label: Text("Log in with Facebook",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
            
                  ],),
          ),
    );
  }
}
