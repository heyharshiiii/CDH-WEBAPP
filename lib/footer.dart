import 'package:flutter/material.dart';

import 'constants.dart';
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final curWidth=MediaQuery.of(context).size.width;
    return Container(
     height: 100,
     width: curWidth,
    child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                      Container(height:50, width:curWidth,child:Center(child: Text("\u00a9 CDH,2023. All rights reserved.",style: Theme.of(context).textTheme.titleMedium!.copyWith(color:darkColor,fontWeight: FontWeight.w300),))),
                           
                            Container(child:Text("📌 Bhubaneshwar,Odisha. India."),)
                           ],
                         ),
                       );                   
  }
}