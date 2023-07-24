import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';

import '../responsive.dart';
import 'Socials.dart';

class ContSocial extends StatelessWidget {
  const ContSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return socialsMobile();
          }
          else {
            return socialsDeskop();
          }
        }
  );
  }
}

class socialsDeskop extends StatelessWidget {
  const socialsDeskop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 40,
         decoration: BoxDecoration(
      color: color2
    ),
          child: Socials(),
       ),
      ],
    );
  }
}
class socialsMobile extends StatelessWidget {
  socialsMobile({super.key});
  bool isVisible=true;

  @override
  Widget build(BuildContext context) {
    var ScreenSize=MediaQuery.of(context).size;
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: ScreenSize.height*0.3,
          width: 40,
         decoration: BoxDecoration(
      color: color2
    ),
          child: Socials(),
       ),
      ],
    );
  }
}

