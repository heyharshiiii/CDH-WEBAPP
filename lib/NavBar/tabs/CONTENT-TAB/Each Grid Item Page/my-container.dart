import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../responsive.dart';


class myContentContainer extends StatelessWidget {
  myContentContainer(
      {super.key,
      required this.screenSize,
      required this.heading,
      required this.description});
  String heading;
  String description;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
                    builder:((context, constraints) {
                        if(Responsive.isMobile(context))
                        {
                              return mob(screenSize: screenSize,heading: heading,description: description,);
                        }
                        else {
                          return desk(screenSize: screenSize,heading: heading,description: description,);
                         }
                    }
                    ),

                    );
  }
}



class desk extends StatelessWidget {
   desk({super.key,
      required this.screenSize,
      required this.heading,
      required this.description});
  String heading;
  String description;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
        return Center(
      child: Container(
          height: screenSize.height * 0.4,
          width: screenSize.width * 0.7,
          decoration: BoxDecoration(
              color: color1, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.only(right: 90),
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Column(
                    children: [
                      Text(
                        heading,
                        style: contentTitle.copyWith(color: darkColor),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: teamFontName2.copyWith(
                            color: bodyTextColor, fontSize: 15.0),
                      )
                    ],
                  )),
            ),
          )),
    );
  }
}

class mob extends StatelessWidget {
   mob({super.key,
      required this.screenSize,
      required this.heading,
      required this.description});
  String heading;
  String description;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
        return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
            height: screenSize.height * 0.4,
            width: screenSize.width ,
            decoration: BoxDecoration(
                color: color1, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Column(
                      children: [
                        Text(
                          heading,
                          style: contentTitle.copyWith(color: darkColor),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.center,
                          style: teamFontName2.copyWith(
                              color: bodyTextColor, fontSize: 15.0),
                        )
                      ],
                    )),
              ),
            )),
      ),
    );
  }
}
