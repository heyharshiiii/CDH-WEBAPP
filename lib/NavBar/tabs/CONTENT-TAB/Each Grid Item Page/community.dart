import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../footer.dart';
import 'my-container.dart';
class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
     return Scaffold(
       backgroundColor: Color.fromARGB(255, 114, 152, 255),
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
         Container(
                    child:  ShaderMask(
              shaderCallback: (Rect rect){
                return cardColor2.createShader(rect);
              },
              child: Text("COMMUNITY",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2.0
                    ),
                        ),
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