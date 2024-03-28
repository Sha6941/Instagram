import 'package:flutter/material.dart';

class Learnnn extends StatelessWidget {
  const Learnnn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 40,),
          ListTile(
            leading: Image.asset("assets/image/IN.png"),
            title: Text("Help Centre",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Divider(),
          Row(children: [
            TextButton(onPressed: () {
        
            }, child: Text("Manage your account",style: TextStyle(color: Colors.blue,fontSize: 13),)),
            Icon(Icons.arrow_forward_ios,size: 13,),
            TextButton(onPressed: () {
        
            }, child: Text("Signing up and getting started",style: TextStyle(color: Colors.blue,fontSize: 13),)),
          ],
          ),
          ListTile(
            title: Text("Information for people who\ndon't use Meta Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            trailing:IconButton(onPressed: () {

            }, icon: Icon(Icons.file_copy_outlined))
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Divider(),
          ),
          Text("Meta Platforms, Inc.(Meta, we, our or us) processes your name, mobile phone number and/or your email address if we receive it from our users through the contact uploading or contact syncing feature available on Facebook, Messenger or Instagram . We process this information even if you are not a user of Facebook, Messenger or Instagram and/or don't have an account with us non-user."),
        SizedBox(height: 20,),
         Row(
           children: [
             Text("About contact uploading and how it works",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           ],
         ),
          SizedBox(height: 15,),
          Text("When a user uses contact uploading and grants us access to their device's address book. We will access and upload the names, phone numbers and email addresses in their address book on a daily basis to our servers, including those of both users of Facebook, Messenger and/or Instagram and other contacts who are not users or don't have an account")
          ,SizedBox(height: 15,)
          ,Text("What information is collected about non-users",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text(("We collect the name, mobile phone number and/or email address of a user's contacts.")),
          SizedBox(height: 15,),
          Row(
            children: [
              Text("How do we use a non-user's information?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 15,),
          Text("Contact uploading is an optional feature where users can choose to upload their device's address book to Facebook, Messenger and/or Instagram. We process the names, phone numbers and/or email addresses in the address book to see if any of the numbers or email addresses belong to users. If a user's contact is also on Facebook, Messenger and/or Instagram, we can suggest this contact on Facebook as someone to send a friend request to in the Facebook user's People you may know or as a suggested account to follow on Instagram. A user's contact who is on Facebook, Messenger and/or Instagram may also be recommended people and things that they care about so that we can offer them a better service. Users can also invite non-users to join Facebook, Messenger and/or Instagram via text or email.")
        ],),
      ),
    );
  }
}
