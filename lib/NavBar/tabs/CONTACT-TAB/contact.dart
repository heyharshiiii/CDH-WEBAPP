import 'package:cdh2/NavBar/tabs/CONTACT-TAB/action-button.dart';
import 'package:cdh2/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../responsive.dart';

class Contact extends StatefulWidget {
  const Contact({super.key, required this.onContributeSelected});
  final Function onContributeSelected;
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.height > 770
          ? 64
          : size.height > 670
              ? 32
              : 16),
      child: Center(
        child: Card(
            elevation: 10,
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(18),
              ),
              duration: Duration(milliseconds: 2000),
              height: size.height *
                  (size.height > 770
                      ? 0.7
                      : size.height > 670
                          ? 0.8
                          : 0.9),
              width: 500,
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "C O N T A C T  U S ",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 30,
                            child: Divider(
                              color: kPrimaryColor,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: 'Full Name',
                                labelText: 'Full Name',
                                labelStyle: labelContri,
                                suffixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white60,
                                )),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: 'Email',
                                labelText: 'Email',
                                labelStyle: labelContri,
                                suffixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white60,
                                )),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: 'Contact No.',
                                labelText: 'Contact No.',
                                labelStyle: labelContri,
                                suffixIcon: Icon(
                                  Icons.phone,
                                  color: Colors.white60,
                                )),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: 'Year & Branch',
                                labelText: 'Year & Branch',
                                labelStyle: labelContri,
                                suffixIcon: Icon(
                                  Icons.school,
                                  color: Colors.white60,
                                )),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          actionButton("SEND!"),
                          SizedBox(
                            height: 10,
                          ),
                          buttonContribute(widget: widget)
                        ],
                      )),
                ),
              ),
            )),
      ),
    );
  }
}

class buttonContribute extends StatelessWidget {
  const buttonContribute({
    super.key,
    required this.widget,
  });

  final Contact widget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return buttonContributeMobile(widget: widget,);
          }
          else {
            return buttonContributeDesktop(widget: widget,);
          }
        }
  );
  }
}

class buttonContributeDesktop extends StatelessWidget {
  const buttonContributeDesktop({
    super.key,
    required this.widget,
  });

  final Contact widget;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Wanna Contribute to the community?",
            style: TextStyle(
                color: Colors.white38, fontSize: 14),
          ),
          InkWell(
            onTap: () {
              widget.onContributeSelected();
            },
            child: Row(
              children: [
                Text(
                  "CONTRIBUTE ",
                  style: fontTabBar2.copyWith(
                      color: kPrimaryColor),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.white60,
                ),
              ],
            ),
          ),
        ]);
  }
}
class buttonContributeMobile extends StatelessWidget {
   const buttonContributeMobile({
    super.key,
    required this.widget,
  });

  final Contact widget;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Wanna Contribute to the community?",
            style: TextStyle(
                color: Colors.white38, fontSize: 14),
          ),
          InkWell(
            onTap: () {
              widget.onContributeSelected();
            },
            child: Row(
              children: [
                Text(
                  "CONTRIBUTE ",
                  style: fontTabBar2.copyWith(
                      color: kPrimaryColor),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.white60,
                ),
              ],
            ),
          ),
        ]);
  }
}
