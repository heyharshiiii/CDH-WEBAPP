import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const darkColor = Color(0xFF191923);
const bodyTextColor = Color.fromARGB(255, 79, 79, 83);
const bgColor = Color(0xFF1E1E28);

const defaultPadding = 24.0;
const defaultDuration = Duration(seconds: 1); // we use it on our animation
const maxWidth = 1440.0; // max width of our web
const  graddd=LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors:<Color>[
    const Color.fromARGB(255, 225, 157, 237),
    const Color.fromARGB(255, 47, 13, 88)
  ]
);

const cardcolor=LinearGradient(
                colors: [
                  Color.fromARGB(255, 210, 215, 255),
                  Color.fromARGB(255, 235, 212, 249),
                 
                ],
              begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp);        
const tabbarcolor1=LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors:<Color>[
    Color.fromARGB(255, 15, 22, 71),
    Color.fromARGB(255, 131, 68, 165),
  ]
);
const tabbarcolor2=LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors:<Color>[
    Color.fromARGB(255, 16, 23, 73),
    Color.fromARGB(255, 131, 68, 165),
  ]
);
final fontTabBar1= GoogleFonts.nanumPenScript(
  fontSize: 24.0,
  letterSpacing: 2.0,
  color: Colors.white,
  fontWeight: FontWeight.bold
);
final fontTabBar2= GoogleFonts.nanumPenScript(
  fontSize: 18.0,
  letterSpacing: 1.0,
  color: Colors.white,
  fontWeight: FontWeight.bold
);
final fontTabBar3= GoogleFonts.nanumPenScript(
  fontSize: 8.0,
  letterSpacing: 1.0,
  color: Colors.white,
  fontWeight: FontWeight.bold
);

final contentTitle=GoogleFonts.ebGaramond(
  fontSize: 24.0,
  letterSpacing: 1.0,
  color: Color.fromARGB(255, 109, 85, 232),
  fontWeight: FontWeight.bold
);



