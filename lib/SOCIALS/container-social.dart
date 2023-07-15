import 'package:flutter/material.dart';

import 'Socials.dart';

class ContSocial extends StatelessWidget {
  const ContSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 40,
         decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [
           Color.fromARGB(255, 73, 82, 157),
             Color.fromARGB(255, 181, 136, 206),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
    ),
          child: Socials(),
       ),
      ],
    );
  }
}