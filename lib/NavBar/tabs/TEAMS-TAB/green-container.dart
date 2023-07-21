import 'package:cdh2/NavBar/tabs/TEAMS-TAB/imageClass.dart';
import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';

class GreenContainer extends StatefulWidget {
  const GreenContainer({super.key});

  @override
  State<GreenContainer> createState() => _GreenContainerState();
}

class _GreenContainerState extends State<GreenContainer> {
  List<bool> isHovered = [];
  void initState() {
    isHovered = List.generate(9, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: cardcolor,
        ),
        child: Container(
          height: screenSize.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Container(width: screenSize.width/2, child: Divider(color: Colors.black87,thickness: 1.0,indent: 100.0,),),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("LEADERSHIP"),
                  SizedBox(
                    width: 5.0,
                  ),
                  //Container(width: screenSize.width/2, child: Divider(color: Colors.black87,thickness: 1.0,endIndent: 200.0,),),
                ],
              ),
              Text("The captains of our ship"),
              SizedBox(
                height: 10,
              ),
              //ImageClass(img: CircleAvatar(child: Image.asset('assets/images/profile.jfif'),), name: Text("data"), job: Text("xyz"))
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jfif'),
                    radius: 80,
                  ),
                  Text("data"),
                  Text("data")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jfif'),
                        radius: 80,
                      ),
                      Text("data"),
                      Text("data")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jfif'),
                        radius: 80,
                      ),
                      Text("data"),
                      Text("data")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jfif'),
                        radius: 80,
                      ),
                      Text("data"),
                      Text("data")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jfif'),
                        radius: 80,
                      ),
                      Text("data"),
                      Text("data")
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
