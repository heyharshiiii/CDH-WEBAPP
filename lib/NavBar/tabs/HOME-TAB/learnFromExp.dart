import 'package:fancy_containers/fancy_containers.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';
class LearnFromExp extends StatelessWidget {
  const LearnFromExp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return fancyMobile();
          }
          else {
            return fancyDesktop();
          }
        }
  );
  }
}


class fancyDesktop extends StatelessWidget {
  const fancyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
         );
  }
}
class fancyMobile extends StatelessWidget {
  const fancyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
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
                SizedBox(height: 25.0,),
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
                 SizedBox(height: 25.0,),
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
         );;
  }
}

