import 'package:cdh2/NavBar/tabs/CONTENT-TAB/contentscreen.dart';
import 'package:cdh2/unused/cdh_nav_bar.dart';
import 'package:cdh2/splashscreen.dart';
import 'package:cdh2/tab-screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'NavBar/tabs/HOME-TAB/homescreen.dart';
import 'constants.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: 
  FirebaseOptions(

     apiKey: "AIzaSyA5F0P4AUnN2uN9TXV_0zXD2cHitQ_UxsQ",
    projectId: "cdh-web-a8712",
    messagingSenderId: "78175276934",
    appId: "1:78175276934:web:f6e26c704cdcf519e16607",
    )
  );
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)
            .apply(
              bodyColor: Colors.white
              )
            .copyWith(
              bodyText1: TextStyle(color: bodyTextColor),
              bodyText2: TextStyle(color: bodyTextColor),
            ),
      ),
      debugShowCheckedModeBanner: false,
      home:MyTabBar (),
    );
  }
}