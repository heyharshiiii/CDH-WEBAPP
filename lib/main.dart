import 'package:cdh2/NavBar/tabs/CONTENT-TAB/contentscreen.dart';
import 'package:cdh2/unused/cdh_nav_bar.dart';
import 'package:cdh2/splashscreen.dart';
import 'package:cdh2/tab-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'NavBar/tabs/HOME-TAB/homescreen.dart';
import 'constants.dart';

void main()
{
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
      home: MyTabBar (),
    );
  }
}