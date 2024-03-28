import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final images=["assets/image/khabib.jpg","assets/image/mamm3.jpg","assets/image/jeff.webp","assets/image/srk1.jpeg","assets/image/avatar.jpeg","assets/image/BiG M.jpg","assets/image/beckam1.webp",
      "assets/image/dq2.webp","assets/image/kohli.webp","assets/image/lal2.jpeg","assets/image/mamm4.jpg","assets/image/srk2.jpg",
      "assets/image/tovi5.jpeg","assets/image/tovi2.jpg","assets/image/dq3.jpeg","assets/image/Cr7.jpg","assets/image/lal2.jpeg",
      "assets/image/Mamm.jpeg","assets/image/beckam2.webp","assets/image/cr1.jpg","assets/image/dq2.webp","assets/image/khabib.jpg","assets/image/tom.webp",
      "assets/image/jeff.webp","assets/image/jackie.jpg","assets/image/obama.webp",
    "assets/image/peter.jpeg","assets/image/khabibbb.png","assets/image/JAA.jpg","assets/image/burack.jpg",
    "assets/image/dhoni.jpg","assets/image/OB.jpg","assets/image/CSN.jpg","assets/image/Tomm.jpg",
    "assets/image/BiG M.jpg","assets/image/dq7.jpg","assets/image/srk1.jpeg","assets/image/avatar.jpeg","assets/image/beckam1.webp",
    "assets/image/dq2.webp","assets/image/kohli.webp","assets/image/lal2.jpeg","assets/image/mamm4.jpg","assets/image/srk2.jpg",
    "assets/image/tovi5.jpeg","assets/image/tovi2.jpg","assets/image/dq3.jpeg","assets/image/Cr7.jpg","assets/image/lal2.jpeg",
    "assets/image/Mamm.jpeg","assets/image/beckam2.webp","assets/image/cr1.jpg","assets/image/dq2.webp","assets/image/lal1.jpg"];
    return Scaffold(
      body:Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45,left: 10,right: 10),
              child: SearchBar(
                leading: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
           Expanded(
             child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount:3,
               crossAxisSpacing: 1,
               mainAxisSpacing: 1
             ),
                   itemCount: images.length,
                 itemBuilder: (context, index) {
                   return Container(
                     decoration: BoxDecoration(

                     ),
                     child: InkWell(
                         onTap: (){},
                         child: Image.asset("${images[index]}",fit: BoxFit.cover,)),
                   );
                 },),
           )
          ],
        ),
      )
    );
  }
}
