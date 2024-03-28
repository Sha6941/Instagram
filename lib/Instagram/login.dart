import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/Instagram/Home.dart';
import 'package:instagram/Instagram/gethelp.dart';
import 'package:instagram/Instagram/signup.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  bool show = true;
  String? selectedValue = "Select your language";
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    String username = usernameController.text;
    String password = passwordController.text;
    // Perform your login logic here
    // For demonstration purposes, let's just navigate to Home screen if both username and password are not empty
    if (username.isNotEmpty && password.isNotEmpty) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Homeee()));
    } else {
      // Handle invalid login case, show error message or perform other actions
      print("Invalid login");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            DropdownButton(
              underline: SizedBox(),
              value: selectedValue,
              style: TextStyle(color: Colors.black),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
              items: [
                "Select your language",
                "English(United Kingdom)",
                "English(India)",
                "Spanish",
                "French",
                "Korean",
                "Japanese"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Padding(padding: EdgeInsets.only(top: 230)),
            Center(child: Image.asset("assets/image/instaaaa.png", scale: 32)),
            SizedBox(height: 20),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    hintText: "Phone number, email address or username",
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  controller: passwordController,
                  obscureText: show,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          show = !show;
                        });
                      },
                      icon: Icon(show ? Icons.visibility_off : Icons.visibility, color: Colors.black),
                    ),
                    hintText: "Password",
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[300],
                minimumSize: Size(355, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              onPressed: login, // Call login function when button is pressed
              child: Text("Log in", style: TextStyle(color: Colors.white)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "Forgotten your login details?",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Gettt()));
                  },
                  child: Text(
                    "Get help with logging in.",
                    style: TextStyle(color: Colors.blue[1000], fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(),
                  ),
                ),
                Text("OR"),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(),
                  ),
                )
              ],
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.facebook, color: Colors.blue, size: 35),
              label: Text(
                "Log In With Facebook",
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 85),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text(
                    "Sign up.",
                    style: TextStyle(color: Colors.blue[1000]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}














// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:instagram/Instagram/Home.dart';
// import 'package:instagram/Instagram/gethelp.dart';
// import 'package:instagram/Instagram/signup.dart';
//
// class Instagram extends StatefulWidget {
//   const Instagram({super.key});
//
//   @override
//   State<Instagram> createState() => _InstagramState();
// }
//
// class _InstagramState extends State<Instagram> {
//   bool show=true;
//   String? selectedvalue="Select your language";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//       SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(padding: EdgeInsets.only(top: 30)),
//             DropdownButton(
//               underline: SizedBox(),
//               value: selectedvalue,
//               style: TextStyle(color: Colors.black),
//               onChanged: (String? newValue){
//                 setState(() {
//                   selectedvalue=newValue;
//                 });
//               },
//
//               items:<String>["Select your language","English(United Kingdom)","English(India)","Spanish","French","Korean","Japanese"].
//               map<DropdownMenuItem<String>>((String value){
//                 return DropdownMenuItem(
//
//                   value: value,
//                   child: Text(value),
//                 );
//               }
//               ).toList(),
//             ),
//             Padding(padding: EdgeInsets.only(top: 230)),
//             Center(child: Image.asset("assets/image/instaaaa.png",scale: 32,)),
//             SizedBox(height: 20,),
//             Container(
//               height: 50,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30,right: 30),
//                 child: TextField(decoration: InputDecoration(
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
//                     hintText: "Phone number, email adress or user name "
//                 ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 15),
//             Container(
//               height: 50,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30,right: 30),
//                 child: TextField(
//                   obscureText:show,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
//                       suffixIcon: IconButton(onPressed: () {
//                         setState(() {
//                           show=! show;
//                         });
//                       }, icon: Icon(show? Icons.visibility_off : Icons.visibility,color: Colors.black,)),
//                       hintText: "Password "
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[300],minimumSize: Size(355, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
//                 onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => Homeee(),));
//                 }, child: Text("Log in",style: TextStyle(color: Colors.white),)),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18),
//                   child: Text("Forgotten your login details?",style: TextStyle(fontSize: 12),),
//                 ),
//                 TextButton(onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) =>Gettt()));
//                 }, child: Text("Get help with logging in.",style:TextStyle(color:Colors.blue[1000],fontWeight: FontWeight.bold,fontSize: 12),)),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10,right: 10),
//                       child: Divider(),
//                     )),
//                 Text("OR"),
//                 Expanded(child: Padding(
//                   padding: const EdgeInsets.only(left: 10,right: 10),
//                   child: Divider(),
//                 ))
//               ],
//             ),
//             TextButton.icon(onPressed: () {
//
//             }, icon: Icon(Icons.facebook,color: Colors.blue,size: 35,),
//                 label: Text("Log In With Facebook",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
//             ),
//             SizedBox(height: 85,),
//             Divider(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//               Text("Don't have an accunt?"),
//               TextButton(onPressed: ()  {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup()));
//               }, child: Text("Sign up.",style: TextStyle(color: Colors.blue[1000]),))
//             ],)
//           ],
//         ),
//       ),
//     );
//   }
// }
