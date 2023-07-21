import 'package:cdh2/NavBar/tabs/TEAMS-TAB/imageClass.dart';
import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';

import '../../../../responsive.dart';

class PresidentContainer extends StatefulWidget {
  const PresidentContainer({super.key});

  @override
  State<PresidentContainer> createState() => _PresidentContainerState();
}

class _PresidentContainerState extends State<PresidentContainer> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return PresidentMobile();
          }
          else {
            return presidentDesktop();
          }
        }
  );
  }
}
class presidentDesktop extends StatefulWidget {
  const presidentDesktop({super.key});

  @override
  State<presidentDesktop> createState() => _presidentDesktopState();
}

class _presidentDesktopState extends State<presidentDesktop> {
  @override
  Widget build(BuildContext context) {
   var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        height: screenSize.height*0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: cardColor2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("PRESIDENT",style: contentTitle.copyWith(color: Colors.white,fontSize: 30),),
            Text("The Captains of our Ship",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white60),),
            SizedBox(
              height: 20.0,
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: president.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: Column(children: [
                          president[index].img,
                          SizedBox(
                            height: 5.0,
                          ),
                          president[index].name,
                          SizedBox(
                            height: 5.0,
                          ),
                          president[index].job
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

class PresidentMobile extends StatefulWidget {
  const PresidentMobile({super.key});

  @override
  State<PresidentMobile> createState() => _presidentMobileState();
}

class _presidentMobileState extends State<PresidentMobile> {
  @override
  Widget build(BuildContext context) {
   var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: screenSize.height*0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: cardColor2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("PRESIDENT",style: contentTitle.copyWith(color: Colors.white,fontSize: 30),),
            Text("The Captains of our Ship",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white60),),
            SizedBox(
              height: 20.0,
            ),
            GridView.builder(
              physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: president.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: Column(children: [
                          presidentMobile[index].img,
                          SizedBox(
                            height: 5.0,
                          ),
                          presidentMobile[index].name,
                          SizedBox(
                            height: 5.0,
                          ),
                          presidentMobile[index].job
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