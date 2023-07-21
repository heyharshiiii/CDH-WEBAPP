
import 'package:cdh2/NavBar/tabs/HOME-TAB/slider.dart';
import 'package:cdh2/SOCIALS/container-social.dart';
import 'package:cdh2/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../unused/cdh_nav_bar.dart';
import 'package:cdh2/constants.dart';
import 'package:fancy_containers/fancy_containers.dart';
import 'home-card.dart';
import 'intro-and-team.dart';
import 'learnFromExp.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    final curHeight=MediaQuery.of(context).size.height;
      final curWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [ 
          ////////////// THE NEON BANNER //////////////
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset("assets/images/neno.jfif",fit: BoxFit.cover,width: double.infinity,),
          ),
          ///////////////THE ABOVE PAGE//////////////
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 200,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /////////THE NEON CDH CARD/////////////
                    HomeCard(),
                  ],
                ),
                SizedBox(height: 100,),
                  /////////////THE LOADING GIF///////////////
                 Container(
              width: double.infinity,
             color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: 700,
                    child: Image.asset("assets/images/loading.gif",alignment: Alignment.center,),
                  ),
                  Container(
                    child:  ShaderMask(
              shaderCallback: (Rect rect){
                return graddd.createShader(rect);
              },
              child: Text("ABOUT US",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2.0
                    ),
                        ),
                    ),
                  ),
                  SizedBox(height: defaultPadding/2,),
                  HomeGifAndIntro(),
                   SizedBox(height: 10,),
                   Container(width: double.infinity,
                   child: Padding(
                     padding: const EdgeInsets.all(defaultPadding),
                     child: LearnFromExp()
                          ) 
                      ),
                       SizedBox(height: 10,),
                     SliderScreen(),
                       Footer()
                ] 
            )
                 ),
                 
              ],
            ),
          
          )
        ]
      )
    );

  }
}
