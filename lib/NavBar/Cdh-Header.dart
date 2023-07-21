import 'package:cdh2/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constants.dart';

class CdhHeader extends StatelessWidget {
  const CdhHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return MobileHeader();
          }
          else {
            return DesktopHeader();
          }
        }
  );
  }
}


 ////////////////////////DESKTOP HEADER////////////////////
class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
       gradient: tabbarcolor2),
        
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
        CircleAvatar(   
        radius: 25,
        backgroundImage: AssetImage("assets/images/cdh2.jpg"),
      ),
      SizedBox(width:defaultPadding/2,),
       Text("CAREER   DEVELOPMENT  HUB",
       style: Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold
       ),
       ),
    ]
     ),
     );
  }
}
 //////////////////MOBILE HEADER//////////////////////
class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenSize=MediaQuery.of(context).size;

     return Container(
      width: double.infinity,
      height: ScreenSize.height*0.15,
      decoration: BoxDecoration(
       gradient: tabbarcolor2),
        
      child:
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
        SizedBox(height:20.0,),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
            CircleAvatar(   
            radius: 20,
            backgroundImage: AssetImage("assets/images/cdh2.jpg"),
          ),
          SizedBox(width:defaultPadding/4,),
           Text("CAREER  DEVELOPMENT  HUB",
           style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold
           ),
           ),
    ]
         ),
       ],
      )
     );
  }
}