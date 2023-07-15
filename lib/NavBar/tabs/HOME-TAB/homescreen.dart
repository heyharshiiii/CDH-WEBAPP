
import 'package:cdh2/SOCIALS/container-social.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../unused/cdh_nav_bar.dart';
import 'package:cdh2/constants.dart';
import 'package:fancy_containers/fancy_containers.dart';
import 'home-card.dart';
import 'intro-and-team.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
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
                     child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                           Center(  
                                  child: const FancyContainer(  
                                    height: 150,
                                    width: 300,
                                    title: "Learn From Experience.", 
                                    titleStyle:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18.0),
                                    textColor: Colors.black,
                                    subtitleColor: Colors.white,
                                    subtitleStyle: TextStyle(fontStyle: FontStyle.italic),
                                    padding: EdgeInsets.all(12),
                                    color1: Color.fromARGB(255, 217, 189, 244),  
                                    color2: Color.fromARGB(255, 183, 232, 255),    
                                    subtitle: "The wise words from experienced tech-leads\nbrought just for you!"
                                  ),  
                                ),  

                              Center(  
                                  child: const FancyContainer(  
                                    height: 150,
                                    width: 300,
                                    title: "Know Latest Opportunities", 
                                    titleStyle:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18.0),
                                    textColor: Colors.white,
                                    subtitleColor: Colors.white,
                                    subtitleStyle: TextStyle(fontStyle: FontStyle.italic),
                                    padding: EdgeInsets.all(12),
                                   color1: Color.fromARGB(255, 217, 189, 244),  
                                    color2: Color.fromARGB(255, 183, 232, 255),    
                                    subtitle: "Never miss a chance to get the latest updates for opportunities! "
                                  ),  
                                ),  

                               Center(  
                                  child: const FancyContainer(  
                                    height: 150,
                                    width: 300,
                                    title: "Learn With Tech Tuesdays", 
                                    titleStyle:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18.0),
                                    textColor: Colors.white,
                                    subtitleColor: Colors.white,
                                    subtitleStyle: TextStyle(fontStyle: FontStyle.italic),
                                    padding: EdgeInsets.all(12),
                                    color1: Color.fromARGB(255, 217, 189, 244),  
                                    color2: Color.fromARGB(255, 183, 232, 255),  
                                    subtitle: "Every tuesday we bring you the lastest buzz from the world of technology! "
                                  ),  
                                ),       
                                ]
                          )
                          ) 
                      ),
                       Container(
                        height: 100,width: curWidth,
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Container(height:50, width:curWidth,child:Center(child: Text("\u00a9 CDH,2023. All rights reserved.",style: Theme.of(context).textTheme.titleMedium!.copyWith(color:darkColor,fontWeight: FontWeight.w300),))),
                           //  SizedBox(height: 5,),
                            Container(child:Text("📌 Bhubaneshwar,Odisha. India."),)
                           ],
                         ),
                       ),

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

