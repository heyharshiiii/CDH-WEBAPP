import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../footer.dart';
import '../../../../responsive.dart';
import 'my-container.dart';
class Sessions extends StatelessWidget {
  const Sessions({super.key});

  @override
  Widget build(BuildContext context) {
     var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 152, 255),
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
         Responsive.isMobile(context)? SizedBox(height: 30.0,): SizedBox(height: 10.0,),      
         Container(
                    child: Text("SESSIONS",
                    textAlign: TextAlign.center,
                    style: Responsive.isMobile(context)
                    ?
                     Theme.of(context).textTheme.titleLarge!.copyWith(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 2.0
                    ): Theme.of(context).textTheme.displayMedium!.copyWith(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 2.0)
                    
                        ),
                    
                  ),
        SizedBox(
          height: 20,
        ),
        myContentContainer(
          screenSize: screenSize,
          heading: "The Role of Technology in Modern Entrepreneurship",
          description: "In today's fast-paced digital era, technology has become an integral part of modern entrepreneurship.\nFrom streamlining operations to expanding market reach, entrepreneurs are leveraging various technological advancements...\nWritten By: Tech Tales Blog\nWhen: 28th June, 2023",
          ),
          SizedBox(height: 20,),
           myContentContainer(
          screenSize: screenSize,
          heading: "The Role of Technology in Modern Entrepreneurship",
          description: "In today's fast-paced digital era, technology has become an integral part of modern entrepreneurship.\nFrom streamlining operations to expanding market reach, entrepreneurs are leveraging various technological advancements...\nWritten By: Tech Tales Blog\nWhen: 28th June, 2023",
          ),
           SizedBox(height: 20,),
           myContentContainer(
          screenSize: screenSize,
          heading: "The Role of Technology in Modern Entrepreneurship",
          description: "In today's fast-paced digital era, technology has become an integral part of modern entrepreneurship.\nFrom streamlining operations to expanding market reach, entrepreneurs are leveraging various technological advancements...\nWritten By: Tech Tales Blog\nWhen: 28th June, 2023",
          ),
           SizedBox(height: 20,),
           myContentContainer(
          screenSize: screenSize,
          heading: "The Role of Technology in Modern Entrepreneurship",
          description: "In today's fast-paced digital era, technology has become an integral part of modern entrepreneurship.\nFrom streamlining operations to expanding market reach, entrepreneurs are leveraging various technological advancements...\nWritten By: Tech Tales Blog\nWhen: 28th June, 2023",
          ),
           SizedBox(height: 20,),
           myContentContainer(
          screenSize: screenSize,
          heading: "The Role of Technology in Modern Entrepreneurship",
          description: "In today's fast-paced digital era, technology has become an integral part of modern entrepreneurship.\nFrom streamlining operations to expanding market reach, entrepreneurs are leveraging various technological advancements...\nWritten By: Tech Tales Blog\nWhen: 28th June, 2023",
          ),
           SizedBox(height: 20,),
            ElevatedButton.icon(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_right_alt), label: Text("Go Back",style: fontTabBar1.copyWith(color: darkColor))),
Footer()
      ]),
    ));
  }
}