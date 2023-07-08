import 'package:cdh2/Screens/components/nav_comp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../NavBar/cdh_nav_bar.dart';
import '../constants.dart';
import '../home/Socials.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 40,
                      color:  Color.fromARGB(255, 121, 220, 247),
                      child: Socials(),
                    ),
            ],
          ),
          Column(
          children: [
            CdhNavigationBar(),
          ],
        ),]
      ),
    );
  }
}



