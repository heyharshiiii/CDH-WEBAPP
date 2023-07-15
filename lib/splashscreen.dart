import 'package:cdh2/NavBar/tabs/HOME-TAB/homescreen.dart';
import 'package:cdh2/tab-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Color bgcolor=Color.fromARGB(255, 13, 16, 28);
  final Color buttonColor=Colors.white;
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/images/sky.gif',fit: BoxFit.cover,width: double.infinity,),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Text("C   D   H",
                style: GoogleFonts.libreBaskerville(
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),


                SizedBox(height: 20.0,),

       InkWell(
      onTap: (){
        Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => const MyTabBar()));
      },
      onHover: (value){
        setState(() {
          isHover=value;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 300,
        decoration: isHover? BoxDecoration(
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              color: buttonColor,
              blurRadius: 10,
            ),
             BoxShadow(
              color: buttonColor,
              blurRadius: 20,
            ),
             BoxShadow(
              color: buttonColor,
              blurRadius: 40,
            )
          ],
        ):BoxDecoration(color: Colors.transparent),
        child: Text(
                      "Explore The Club !",
                        style: GoogleFonts.montez(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: isHover? bgcolor:buttonColor,
                     ),
                      ),
      )
       )
               ],
              
              ),
            )
          ],
        ),
      )
    );
  }
}