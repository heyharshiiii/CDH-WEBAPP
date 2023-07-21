import 'package:cdh2/NavBar/tabs/TEAMS-TAB/imageClass.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class LeadershipContainer extends StatefulWidget {
  const LeadershipContainer({super.key});

  @override
  State<LeadershipContainer> createState() => _LeadershipContainerState();
}

class _LeadershipContainerState extends State<LeadershipContainer> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        height: screenSize.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: cardColor2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("LEADERSHIP",style: contentTitle.copyWith(color: Colors.white,fontSize: 30),),
            Text("The Captains Of Our Ship",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white60),),
            SizedBox(
              height: 10.0,
            ),
            Container(
              color: Colors.transparent,
              child: Column(children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jfif'),radius: 80,
                ),
                Text("Scarlett Johnshon",style: teamFontName,),
                Text("Faculty Advisor",style: teamFontJob,)
              ]),
            ),
            SizedBox(
              height: 20.0,
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemCount: leadership.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: Column(children: [
                          leadership[index].img,
                          SizedBox(
                            height: 5.0,
                          ),
                          leadership[index].name,
                          SizedBox(
                            height: 5.0,
                          ),
                          leadership[index].job
                        ]),
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
