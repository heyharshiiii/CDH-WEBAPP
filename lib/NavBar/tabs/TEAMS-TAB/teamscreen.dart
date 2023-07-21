import 'package:cdh2/NavBar/tabs/TEAMS-TAB/green-container.dart';
import 'package:cdh2/NavBar/tabs/TEAMS-TAB/separate-containers/leadership-container.dart';
import 'package:cdh2/NavBar/tabs/TEAMS-TAB/separate-containers/president-container.dart';
import 'package:cdh2/NavBar/tabs/TEAMS-TAB/separate-containers/technical-container.dart';
import 'package:cdh2/footer.dart';
import 'package:cdh2/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Container(
              child: ShaderMask(
                shaderCallback: (Rect rect) {
                  return graddd.createShader(rect);
                },
                child: Text(
                  " MEET THE CDH TEAM !",
                  textAlign: TextAlign.center,
                  style: Responsive.isDesktop(context)?
                  Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2.0)
                      :  Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white,
                      letterSpacing: 1.0)
                ),
              ),
            ),
          ),
          Text(
            "An Awesome Tech Community driven by Passion and Innovation",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: darkColor,fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          LeadershipContainer(),
          SizedBox(
            height: 20,
          ),
          PresidentContainer(),
          SizedBox(
            height: 20,
          ),
          TechnicalContainer(),
          SizedBox(
            height: 20,
          ),
          Footer(),
        ],
      ),
    );
  }
}
