import 'package:cdh2/NavBar/tabs/CONTACT-TAB/contribute.dart';
import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';
import 'contact.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  Option selectedOption = Option.Contact;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(color: Colors.white),
        child: AnimatedSwitcher(
            duration: Duration(milliseconds: 400),
            //  // Animation 1
            //     transitionBuilder: (widget, animation) => RotationTransition(
            //      turns: animation,
            //      child: widget,
            //     ),
            // switchOutCurve: Curves.easeInOutCubic,
            // switchInCurve: Curves.fastLinearToSlowEaseIn,

            // //Animation 2
            transitionBuilder: (widget, animation) =>
                ScaleTransition(child: widget, scale: animation),
            child: selectedOption == Option.Contact
                ? Contact(
                    onContributeSelected: () {
                      setState(() {
                        selectedOption = Option.Contribute;
                      });
                    },
                  )
                : Contribute(onContactSelected: () {
                    setState(() {
                      selectedOption = Option.Contact;
                    });
                  })));
  }
}
