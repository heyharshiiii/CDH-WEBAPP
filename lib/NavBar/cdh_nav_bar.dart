import 'package:flutter/material.dart';

import '../Screens/components/nav_comp.dart';
import '../constants.dart';

class CdhNavigationBar extends StatelessWidget {
   CdhNavigationBar({
    super.key,
  });
  // final LinearGradient _gradient=LinearGradient(
  //   begin: Alignment.topCenter,
  //   end: Alignment.centerRight,
  //   colors: <Color>[
  //     Colors.black,
  //     Colors.white
  //   ]
  //   );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 36, 94, 138),
      height: 70.0,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal:8.0),
            child: Row(
              children: [
                  CircleAvatar(   
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/cdh2.jpg"),
                ),
                SizedBox(width:defaultPadding/2,),
                 Text("CAREER   DEVELOPMENT  HUB",
                 style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Color.fromARGB(255, 241, 219, 226),
                  fontWeight: FontWeight.bold
                 )
                 ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  NavComp(component: "Home", icons: Icon(Icons.home,color: Colors.white,)),
                  SizedBox(width: defaultPadding,),
                  NavComp(component: "Content", icons: Icon(Icons.content_copy,color: Colors.white,)),
                  SizedBox(width: defaultPadding,),
                   NavComp(component: "Writes", icons: Icon(Icons.add_comment,color: Colors.white,)),
                  SizedBox(width: defaultPadding,),
                   NavComp(component: "Teams", icons: Icon(Icons.theater_comedy_sharp,color: Colors.white,)),
                  SizedBox(width: defaultPadding,),
                  NavComp(component: "Contact", icons: Icon(Icons.phone,color: Colors.white,)),
                  SizedBox(width: defaultPadding,),
              ],
            ),
          )
        ],
      )
    );
  }
}