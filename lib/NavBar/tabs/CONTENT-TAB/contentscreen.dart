import 'package:cdh2/NavBar/tabs/CONTENT-TAB/Each%20Grid%20Item%20Page/Inclusion&Diversity.dart';
import 'package:cdh2/NavBar/tabs/CONTENT-TAB/Each%20Grid%20Item%20Page/article.dart';
import 'package:cdh2/NavBar/tabs/CONTENT-TAB/Each%20Grid%20Item%20Page/community.dart';
import 'package:cdh2/NavBar/tabs/CONTENT-TAB/Each%20Grid%20Item%20Page/hackathons.dart';
import 'package:cdh2/NavBar/tabs/CONTENT-TAB/Each%20Grid%20Item%20Page/openSource.dart';
import 'package:cdh2/NavBar/tabs/CONTENT-TAB/Each%20Grid%20Item%20Page/placements-and-internships.dart';
import 'package:cdh2/NavBar/tabs/CONTENT-TAB/Each%20Grid%20Item%20Page/scholarships.dart';
import 'package:cdh2/NavBar/tabs/CONTENT-TAB/Each%20Grid%20Item%20Page/sessions.dart';
import 'package:cdh2/NavBar/tabs/CONTENT-TAB/Each%20Grid%20Item%20Page/techBytes.dart';
import 'package:cdh2/constants.dart';
import 'package:cdh2/footer.dart';
import 'package:cdh2/models/Content-Grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../responsive.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: ((context, constraints) {
          if (Responsive.isMobile(context)) {
            return MobileContent();
          } else if (Responsive.isTablet(context)) {
            return TabletContent();
          } else {
            return DesktopContent();
          }
        }),
      ),
    );
  }
}

/////////DESKTOP/////////////

class DesktopContent extends StatefulWidget {
  DesktopContent({super.key});

  @override
  State<DesktopContent> createState() => _DesktopContentState();
}

class _DesktopContentState extends State<DesktopContent> {
  List<bool> isHovered = []; // Declare isHovered as a member variable

  @override
  void initState() {
    isHovered = List.generate(9, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    final curWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: demo_content.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    switch (index){
                      case 0:
                        return Article();
                      case 1:
                        return InclusionAndDiversity();
                      case 2:
                      return Sessions();
                      case 3:
                      return Scholarships();
                      case 4:
                      return PlacementAndInternship();
                      case 5:
                      return Hackathons();
                      case 6:
                      return Community();
                      case 7:
                      return OpenSource();
                      case 8:
                      return TechBytes();
                      default:
                        return Container();
                    } 
                  }
                 )
                 );
                
                
                },
                child: MouseRegion(
                  onHover: (event) {
                    setState(() {
                      isHovered[index] = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      isHovered[index] = false;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Container(
                      decoration: isHovered[index]
                          ? BoxDecoration(
                              gradient: cardcolor,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 25, color: Colors.grey)
                              ],
                            )
                          : BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(blurRadius: 25, color: Colors.grey)
                            ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          demo_content[index].textt,
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 300,
                              width: 300,
                              child: demo_content[index].img)
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Footer()
        ],
      ),
    );
  }
}



//////MOBILE//////////////
class MobileContent extends StatefulWidget {
  MobileContent({super.key});

  @override
  State<MobileContent> createState() => _MobileContentState();
}

class _MobileContentState extends State<MobileContent> {
  List<bool> isHovered = []; // Declare isHovered as a member variable

  @override
  void initState() {
    isHovered = List.generate(9, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    final curWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    switch (index){
                      case 0:
                        return Article();
                      case 1:
                        return InclusionAndDiversity();
                      case 2:
                      return Sessions();
                      case 3:
                      return Scholarships();
                      case 4:
                      return PlacementAndInternship();
                      case 5:
                      return Hackathons();
                      case 6:
                      return Community();
                      case 7:
                      return OpenSource();
                      case 8:
                      return TechBytes();
                      default:
                        return Container();
                    } 
                  }
                 )
                 );
                
                },
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Container(
                    decoration:BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(blurRadius: 25, color: Colors.grey)
                          ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        demo_content[index].textt,
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            height: 250,
                            width: 2500,
                            child: demo_content[index].img)
                      ],
                    ),
                  ),
                ),
                );
            },
          ),
          Footer(),
        ]
      )
    );
  }
}


//TABLET//////////////
class TabletContent extends StatefulWidget {
  TabletContent({super.key});

  @override
  State<TabletContent> createState() => _TabletContentState();
}

class _TabletContentState extends State<TabletContent> {
  List<bool> isHovered = []; // Declare isHovered as a member variable

  @override
  void initState() {
    isHovered = List.generate(9, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    final curWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView.builder(
            
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) {
              return MouseRegion(
                onHover: (event) {
                  setState(() {
                    isHovered[index] = true;
                  });
                },
                onExit: (event) {
                  setState(() {
                    isHovered[index] = false;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding / 2),
                  child: Container(
                    decoration: isHovered[index]
                        ? BoxDecoration(
                            gradient: cardcolor,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 25, color: Colors.grey)
                            ],
                          )
                        : BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(blurRadius: 25, color: Colors.grey)
                          ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        demo_content[index].textt,
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            height: 200,
                            width: 200,
                            child: demo_content[index].img)
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Footer()
        ],
      ),
    );
  }
}