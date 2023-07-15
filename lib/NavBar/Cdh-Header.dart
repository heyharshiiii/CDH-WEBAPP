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
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
       gradient: tabbarcolor2),
        
      child: LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return MobileHeader();
          }
          else {
            return DesktopHeader();
          }
        }
      )
  );
  }
}
class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
     return Row(
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
     );
  }
}

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
     return Row(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
        CircleAvatar(   
        radius: 20,
        backgroundImage: AssetImage("assets/images/cdh2.jpg"),
      ),
      SizedBox(width:defaultPadding/4,),
       Text("CAREER   DEVELOPMENT  HUB",
       style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold
       ),
       ),
    ]
     );
  }
}