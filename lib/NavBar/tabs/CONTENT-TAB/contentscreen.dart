import 'package:cdh2/constants.dart';
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
   bool isHover=false;
  @override
  Widget build(BuildContext context) {
    // final currWidth=MediaQuery.of(context).size.width;
    
    return Container(
     child: LayoutBuilder(
                    builder:((context, constraints) {
                       if(Responsive.isMobile(context))
                        {
                          return MobileContent();
                        }
                        else if(Responsive.isTablet(context))
                        {
                              return TabletContent();
                        }
                        else {
                          return DesktopContent();
                         }
                    }
                    ),

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
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
          itemCount: demo_content.length,
      
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,), 
      
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(defaultPadding),

              child: Container(
               decoration: BoxDecoration(
                color: Colors.white,
               boxShadow: [
                BoxShadow(blurRadius: 25,color: Colors.grey)
               ] 
               ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    demo_content[index].textt,
                    SizedBox(height: 10,),
                    Container(height:300,width:300,child: demo_content[index].img)
                  ],
                ),
              ),
            );
          }
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
  @override
  Widget build(BuildContext context) {
   return GridView.builder(
          itemCount: demo_content.length,
      
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,), 
      
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(defaultPadding/2),

              child: Container(
               decoration: BoxDecoration(
                color: Colors.white,
               boxShadow: [
                BoxShadow(blurRadius: 20,color: Colors.grey)
               ] 
               ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    demo_content[index].textt,
                    SizedBox(height: 10,),
                    Container(height:200,width:200,child: demo_content[index].img)
                  ],
                ),
              ),
            );
          }
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
  @override
  Widget build(BuildContext context) {
   return GridView.builder(
          itemCount: demo_content.length,
      
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,), 
      
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(defaultPadding/2),

              child: Container(
               decoration: BoxDecoration(
                color: Colors.white,
               boxShadow: [
                BoxShadow(blurRadius: 20,color: Colors.grey)
               ] 
               ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    demo_content[index].textt,
                    SizedBox(height: 10,),
                    Container(height:200,width:200,child: demo_content[index].img)
                  ],
                ),
              ),
            );
          }
      );
  }
}