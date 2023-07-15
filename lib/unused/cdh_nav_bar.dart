import 'package:flutter/material.dart';
import 'nav_comp.dart';
import '../constants.dart';
class TabControllerExampleApp extends StatelessWidget {
  const TabControllerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabControllerExample(),
    );
  }
}

const List<Tab> tabs = <Tab>[
  Tab(icon:Icon(Icons.home),text: 'Home',),
  Tab(icon:Icon(Icons.content_copy_outlined),text: 'Content'),
  Tab(icon:Icon(Icons.web_rounded),text: 'Writes',),
  Tab(icon:Icon(Icons.groups),text: 'Teams'),
  Tab(icon:Icon(Icons.phone),text: 'Contact',)
];

class TabControllerExample extends StatelessWidget {
  const TabControllerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Center(
                child: Text(
                  '${tab.text!} Tab',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            }).toList(),
          ),
        );
      }),
    );
  }
}




// class CdhNavigationBar extends StatelessWidget {
//    CdhNavigationBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 16, 23, 73),
//                   Color.fromARGB(255, 93, 35, 125),
                 
//                 ],
//                 begin: const FractionalOffset(0.0, 0.0),
//                 end: const FractionalOffset(1.0, 0.0),
//                 stops: [0.0, 1.0],
//                 tileMode: TileMode.clamp),
//           ),
//       height: 70.0,
//       width: double.infinity,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(horizontal:8.0),
//             child: Row(
//               children: [
//                   CircleAvatar(   
//                   radius: 25,
//                   backgroundImage: AssetImage("assets/images/cdh2.jpg"),
//                 ),
//                 SizedBox(width:defaultPadding/2,),
//                  Text("CAREER   DEVELOPMENT  HUB",
//                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold
//                  )
//                  ),
//               ],
//             ),
//           ),
         
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                   NavComp(component: "Home", icons: Icon(Icons.home,color: Colors.white,)),
//                   SizedBox(width: defaultPadding,),
//                   TextButton(
//                     onPressed: ()
//                     {
//                      Navigator.of(context).push(_content());
//                     },
//                     child: NavComp(component: "Content", icons: Icon(Icons.content_copy,color: Colors.white,))),
//                   SizedBox(width: defaultPadding,),
//                    TextButton(
//                     onPressed: ()
//                     {
//                      Navigator.of(context).push(_writes());
//                     },
//                     child: NavComp(component: "Writes", icons: Icon(Icons.add_comment,color: Colors.white,))),
//                   SizedBox(width: defaultPadding,),
//                    TextButton(
//                     onPressed: (){
//                     Navigator.of(context).push(_writes());

//                     },
//                     child: NavComp(component: "Teams", icons: Icon(Icons.theater_comedy_sharp,color: Colors.white,))),
//                   SizedBox(width: defaultPadding,),
//                   TextButton(
//                     onPressed:(){
//                      Navigator.of(context).push(_contact());
//                     } ,
//                     child: NavComp(component: "Contact", icons: Icon(Icons.phone,color: Colors.white,))),
//                   SizedBox(width: defaultPadding,),
//               ],
//             ),
//           )
//         ],
//       )
//     );
//   }
// }
// //////////ALL THE ROUTES TO THE NEW PAGES////////////

// //////CONTENT ROUTE ANIMATION//////////
// Route _content() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => const ContentPage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }
// //////TEAMS ROUTE ANIMATION//////////
// Route _teams() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => const TeamsPage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }
// ////////WRITES ROUTE ANIMATION///////
// Route _writes() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => const WritesPage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }

// //////CONTACT ROUTE ANIMATION///////
// Route _contact() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => const ContactPage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }






