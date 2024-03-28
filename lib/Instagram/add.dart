



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Addd extends StatefulWidget {
  const Addd({super.key});

  @override
  State<Addd> createState() => _AdddState();
}

class _AdddState extends State<Addd> {
  final images=["assets/image/khabib.jpg","assets/image/kohli.webp","assets/image/mamm3.jpg","assets/image/jeff.webp","assets/image/srk1.jpeg","assets/image/avatar.jpeg","assets/image/BiG M.jpg","assets/image/beckam1.webp",
    "assets/image/dq2.webp","assets/image/kohli.webp","assets/image/lal2.jpeg","assets/image/mamm4.jpg","assets/image/srk2.jpg",
    "assets/image/tovi5.jpeg","assets/image/tovi2.jpg","assets/image/dq3.jpeg","assets/image/Cr7.jpg","assets/image/lal2.jpeg",
    "assets/image/Mamm.jpeg","assets/image/beckam2.webp","assets/image/cr1.jpg","assets/image/dq2.webp","assets/image/khabib.jpg","assets/image/tom.webp",
    "assets/image/jeff.webp","assets/image/jackie.jpg","assets/image/obama.webp",
    "assets/image/peter.jpeg","assets/image/khabibbb.png","assets/image/JAA.jpg","assets/image/burack.jpg",
    "assets/image/dhoni.jpg","assets/image/OB.jpg","assets/image/CSN.jpg","assets/image/Tomm.jpg",
    "assets/image/BiG M.jpg","assets/image/dq7.jpg","assets/image/srk1.jpeg","assets/image/avatar.jpeg","assets/image/beckam1.webp",
    "assets/image/dq2.webp","assets/image/kohli.webp","assets/image/lal2.jpeg","assets/image/mamm4.jpg","assets/image/srk2.jpg",
    "assets/image/tovi5.jpeg","assets/image/tovi2.jpg","assets/image/dq3.jpeg","assets/image/Cr7.jpg","assets/image/lal2.jpeg",
    "assets/image/Mamm.jpeg","assets/image/beckam2.webp","assets/image/cr1.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {

        }, icon: Icon(Icons.highlight_remove_outlined,size: 30,)),
        title: Text("New post",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        actions: [
          TextButton(onPressed: () {

          }, child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue))
          )
        ],
      ),
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                  border: Border.all()
              ),
              child: Image.asset("assets/image/khabib.jpg",fit:BoxFit.cover,),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 290),
                child: IconButton(onPressed: () {

                }, icon: Icon(Icons.photo_size_select_large,color: Colors.white,size: 40,)),
              ),
            )
          ],
        ),
        Row(children: [
          TextButton(onPressed: () {

          }, child: Text("Recents",style: TextStyle(color: Colors.black,fontSize: 20),)),

          Icon(Icons.keyboard_arrow_down),
          SizedBox(width: 200,),
          CircleAvatar(radius: 18,backgroundColor: Colors.grey,child: IconButton(onPressed: () {

          }, icon: Icon(Icons.collections_bookmark_rounded,color: Colors.white,size: 20,)),),
          SizedBox(width: 10,),
          CircleAvatar(radius: 18,backgroundColor: Colors.grey,child: IconButton(onPressed: () {

          }, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 20,)),)
        ],),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:4,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {

              return Container(
                child: Image.asset("${images[index]}",fit: BoxFit.cover,),
              );
            },),
        )
      ],),
    );
  }
}















// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class Addd extends StatefulWidget {
//   const Addd({super.key});
//
//   @override
//   State<Addd> createState() => _AdddState();
// }
//
// class _AdddState extends State<Addd> {
//   final images = [
//     "assets/image/khabib.jpg",
//     "assets/image/kohli.webp",
//     "assets/image/mamm3.jpg",
//     "assets/image/jeff.webp",
//     "assets/image/srk1.jpeg",
//     "assets/image/avatar.jpeg",
//     "assets/image/BiG M.jpg",
//     "assets/image/beckam1.webp",
//     "assets/image/dq2.webp",
//     "assets/image/kohli.webp",
//     "assets/image/lal2.jpeg",
//     "assets/image/mamm4.jpg",
//     "assets/image/srk2.jpg",
//     "assets/image/tovi5.jpeg",
//     "assets/image/tovi2.jpg",
//     "assets/image/dq3.jpeg",
//     "assets/image/Cr7.jpg",
//     "assets/image/lal2.jpeg",
//     "assets/image/Mamm.jpeg",
//     "assets/image/beckam2.webp",
//     "assets/image/cr1.jpg",
//     "assets/image/dq2.webp",
//     "assets/image/khabib.jpg",
//     "assets/image/tom.webp",
//     "assets/image/jeff.webp",
//     "assets/image/jackie.jpg",
//     "assets/image/obama.webp",
//     "assets/image/peter.jpeg",
//     "assets/image/khabibbb.png",
//     "assets/image/JAA.jpg",
//     "assets/image/burack.jpg",
//     "assets/image/dhoni.jpg",
//     "assets/image/OB.jpg",
//     "assets/image/CSN.jpg",
//     "assets/image/Tomm.jpg",
//     "assets/image/BiG M.jpg",
//     "assets/image/dq7.jpg",
//     "assets/image/srk1.jpeg",
//     "assets/image/avatar.jpeg",
//     "assets/image/beckam1.webp",
//     "assets/image/dq2.webp",
//     "assets/image/kohli.webp",
//     "assets/image/lal2.jpeg",
//     "assets/image/mamm4.jpg",
//     "assets/image/srk2.jpg",
//     "assets/image/tovi5.jpeg",
//     "assets/image/tovi2.jpg",
//     "assets/image/dq3.jpeg",
//     "assets/image/Cr7.jpg",
//     "assets/image/lal2.jpeg",
//     "assets/image/Mamm.jpeg",
//     "assets/image/beckam2.webp",
//     "assets/image/cr1.jpg"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.highlight_remove_outlined, size: 30),
//         ),
//         title: Text(
//           "New post",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {},
//             child: Text(
//               "Next",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//                 color: Colors.blue,
//               ),
//             ),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: 350,
//                   decoration: BoxDecoration(border: Border.all()),
//                   child: Image.asset(
//                     "assets/image/khabib.jpg",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Container(
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 290),
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.photo_size_select_large, color: Colors.white, size: 40),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               children: [
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     "Recents",
//                     style: TextStyle(color: Colors.black, fontSize: 20),
//                   ),
//                 ),
//                 Icon(Icons.keyboard_arrow_down),
//                 SizedBox(width: 200),
//                 CircleAvatar(
//                   radius: 18,
//                   backgroundColor: Colors.grey,
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.collections_bookmark_rounded, color: Colors.white, size: 20),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 CircleAvatar(
//                   radius: 18,
//                   backgroundColor: Colors.grey,
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 20),
//                   ),
//                 )
//               ],
//             ),
//             GridView.builder(
//               scrollDirection: Axis.vertical,
//               shrinkWrap: true,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4,
//                 mainAxisSpacing: 1,
//                 crossAxisSpacing: 1,
//               ),
//               itemCount: images.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   child: Image.asset("${images[index]}", fit: BoxFit.cover),
//                 );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }










