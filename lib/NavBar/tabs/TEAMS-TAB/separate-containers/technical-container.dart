import 'package:cdh2/NavBar/tabs/TEAMS-TAB/imageClass.dart';
import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';

import '../../../../responsive.dart';

class TechnicalContainer extends StatefulWidget {
  const TechnicalContainer({super.key});

  @override
  State<TechnicalContainer> createState() => _TechnicalContainerState();
}

class _TechnicalContainerState extends State<TechnicalContainer> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return TechnicalMobile();
          }
          else {
            return TechnicalDesktop();
          }
        }
  );
  }
}

class TechnicalDesktop extends StatefulWidget {
  const TechnicalDesktop({super.key});

  @override
  State<TechnicalDesktop> createState() => _TechnicalDesktopState();
}

class _TechnicalDesktopState extends State<TechnicalDesktop> {
  @override
  Widget build(BuildContext context) {
     var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        height: screenSize.height*1.2,
        decoration: BoxDecoration(
          gradient: cardColor2,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(
                height: 10.0,
              ),
              Text("Technical Team",style: contentTitle.copyWith(color: Colors.white,fontSize: 30),),
              Text("The Set the Tech Balls Rolling",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white60),),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: technical.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Column(children: [
                            technical[index].img,
                            SizedBox(
                              height: 5.0,
                            ),
                            technical[index].name,
                            SizedBox(
                              height: 5.0,
                            ),
                            technical[index].job
                          ]),
                        )
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class TechnicalMobile extends StatefulWidget {
  const TechnicalMobile({super.key});

  @override
  State<TechnicalMobile> createState() => _TechnicalMobileState();
}

class _TechnicalMobileState extends State<TechnicalMobile> {
  @override
  Widget build(BuildContext context) {
     var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: screenSize.height*1.1,
        decoration: BoxDecoration(
          gradient: cardColor2,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(
                height: 10.0,
              ),
              Text("Technical Team",style: contentTitle.copyWith(color: Colors.white,fontSize: 30),),
              Text("They Set the Tech Balls Rolling",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white60),),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              GridView.builder(
                physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: technical.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Column(children: [
                            technicalMobile[index].img,
                            SizedBox(
                              height: 5.0,
                            ),
                            technicalMobile[index].name,
                            SizedBox(
                              height: 5.0,
                            ),
                            technicalMobile[index].job
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