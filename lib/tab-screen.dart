import 'package:cdh2/NavBar/tabs/CONTACT-TAB/contactscreen.dart';
import 'package:cdh2/NavBar/tabs/CONTENT-TAB/contentscreen.dart';
import 'package:cdh2/NavBar/tabs/TEAMS-TAB/teamscreen.dart';
import 'package:cdh2/NavBar/tabs/WRITES-TAB/writesscreen.dart';
import 'package:cdh2/constants.dart';
import 'package:cdh2/NavBar/tabs/HOME-TAB/homescreen.dart';
import 'package:cdh2/responsive.dart';
import 'package:flutter/material.dart';

import 'NavBar/Cdh-Header.dart';
import 'SOCIALS/container-social.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Stack(
          children:[
           Column(
              children: [
                //////HEADING OF CDH//////
                CdhHeader(),

            //////// THE TAB BAR //////////////
                Container(
                  decoration: BoxDecoration(
                    gradient: tabbarcolor1
                  ),
                  child: LayoutBuilder(
                    builder:((context, constraints) {
                       if(Responsive.isMobileLarge(context))
                        {
                          return MobileTabBar();
                        }
                        else if(Responsive.isMobile(context))
                        {
                              return MobileSmallTabbar();
                        }
                        else {
                          return DesktopTabbar();
                         }
                    }
                    ),

                    )
                ),
                ///////////CLASSES OF EACH TAB BAR IN TABBAR VIEW/////////
                Expanded(
                  child: TabBarView(
                    children: [
                            Homescreen(),

                            ContentScreen(),

                            WritesScreen(),

                            TeamsScreen(),

                            ContactScreen()  
                      ]
                  ),
                )
              ],
          ),

          ///////THE SOCIAL MEDIA LAUNCHER////////////
          ContSocial(),
          ]
        ),
      ),
    );
  }
}






//////For Mobile//////
class MobileTabBar extends StatelessWidget {
  const MobileTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  TabBar(
                    labelColor: Colors.white,
                    labelStyle: fontTabBar2,
                    unselectedLabelColor: Colors.white38,
                    indicatorColor: Colors.white,
                    tabs: 
                  [
                     Tab(text: 'HOME',),
                      Tab(text: 'CONTENT'),
                      Tab(text: 'WRITES',),
                      Tab(text: 'TEAMS'),
                      Tab(text: 'CONTACT',)
                  ]
                  );
  }
}


class DesktopTabbar extends StatelessWidget {
  const DesktopTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  TabBar(
                    labelColor: Colors.white,
                    labelStyle: fontTabBar1,
                    unselectedLabelColor: Colors.white38,
                    indicatorColor: Colors.white,
                    tabs: 
                  [
                     Tab(text: 'HOME',),
                      Tab(text: 'CONTENT'),
                      Tab(text: 'WRITES',),
                      Tab(text: 'TEAMS'),
                      Tab(text: 'CONTACT',)
                  ]
                  );
  }
}

class MobileSmallTabbar extends StatelessWidget {
  const MobileSmallTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  TabBar(
                    labelColor: Colors.white,
                    labelStyle: fontTabBar3,
                    unselectedLabelColor: Colors.white38,
                    indicatorColor: Colors.white,
                    tabs: 
                  [
                     Tab(text: 'HOME',),
                      Tab(text: 'CONTENT'),
                      Tab(text: 'WRITES',),
                      Tab(text: 'TEAMS'),
                      Tab(text: 'CONTACT',)
                  ]
                  );
  }
}