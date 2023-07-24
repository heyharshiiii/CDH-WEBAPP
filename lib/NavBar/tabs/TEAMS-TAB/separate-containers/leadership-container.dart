import 'package:cdh2/NavBar/tabs/TEAMS-TAB/imageClass.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../responsive.dart';

class LeadershipContainer extends StatefulWidget {
  const LeadershipContainer({super.key});

  @override
  State<LeadershipContainer> createState() => _LeadershipContainerState();
}

class _LeadershipContainerState extends State<LeadershipContainer> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return leadersMobile();
          }
          else {
            return leadersDesktop();
          }
        }
  );
  }
}



class leadersDesktop extends StatefulWidget {
  const leadersDesktop({super.key});

  @override
  State<leadersDesktop> createState() => _leadersDesktopState();
}

class _leadersDesktopState extends State<leadersDesktop> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        width: screenSize.width*0.7,
        height: screenSize.height*0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: cardColor2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("LEADERSHIP",style: contentTitle.copyWith(color: Colors.white,fontSize: 30),),
            Text("The Captain Of Our Ship",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white60),),
            SizedBox(
              height: 30.0,
            ),
            Container(
              color: Colors.transparent,
              child: Column(children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/maam2.jpg'),radius: 90,
                ),
                   SizedBox(
              height: 30.0,
            ),
                Text("ANUKAMPA BEHERA",style: teamFontName,),
                
              ]),
            ),
            SizedBox(
              height: 20.0,
            ),
            // GridView.builder(
            //     shrinkWrap: true,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 4),
            //     itemCount: leadership.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           Container(
            //             color: Colors.transparent,
            //             child: Column(children: [
            //               leadership[index].img,
            //               SizedBox(
            //                 height: 5.0,
            //               ),
            //               leadership[index].name,
            //               SizedBox(
            //                 height: 5.0,
            //               ),
            //               leadership[index].job
            //             ]),
            //           )
            //         ],
            //       );
            //     })
          ],
        ),
      ),
    );
  }
}
class leadersMobile extends StatefulWidget {
  const leadersMobile({super.key});

  @override
  State<leadersMobile> createState() => _leadersMobileState();
}

class _leadersMobileState extends State<leadersMobile> {
  @override
  Widget build(BuildContext context) {
     var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screenSize.width*0.8,
        height: screenSize.height*0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: cardColor2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("LEADERSHIP",style: contentTitle.copyWith(color: Colors.white,fontSize: 30),),
            Text("The Captain Of Our Ship",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white60),),
            SizedBox(
              height: 10.0,
            ),
            Container(
              color: Colors.transparent,
              child: Column(children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/maam2.jpg'),radius: 80,
                ),
                 SizedBox(
              height: 20.0,
            ),
                Text("ANUKAMPA BEHERA",style: teamFontName,),
                // Text("Faculty Advisor",style: teamFontJob,)
              ]),
            ),
           
            // GridView.builder(
            //   physics: ScrollPhysics(),
            //     shrinkWrap: true,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2),
            //     itemCount: leadership.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           Container(
            //             color: Colors.transparent,
            //             child: Column(children: [
            //               leadershipMobile[index].img,
            //               SizedBox(
            //                 height: 5.0,
            //               ),
            //               leadershipMobile[index].name,
            //               SizedBox(
            //                 height: 5.0,
            //               ),
            //               leadershipMobile[index].job,
                           
                          
            //             ]),
            //           )
            //         ],
            //       );
            //     })
          ],
        ),
      ),
    );;
  }
}