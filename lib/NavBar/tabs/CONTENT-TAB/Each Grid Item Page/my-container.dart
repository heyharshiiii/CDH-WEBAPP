import 'package:flutter/material.dart';

import '../../../../constants.dart';


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
    return Center(
      child: Container(
          height: screenSize.height * 0.4,
          width: screenSize.width * 0.7,
          decoration: BoxDecoration(
              gradient: cardColor2, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.only(right: 90),
            child: Container(
                decoration: BoxDecoration(
                    gradient: cardcolor,
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
          )),
    );
  }
}
