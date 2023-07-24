import 'package:cdh2/NavBar/tabs/CONTACT-TAB/action-button.dart';
import 'package:cdh2/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../responsive.dart';
import '../../../utils.dart';

class Contribute extends StatefulWidget {
  const Contribute({super.key, required this.onContactSelected});
  final Function onContactSelected;
  @override
  State<Contribute> createState() => _ContributeState();
}

class _ContributeState extends State<Contribute> {
  final _NameController=new TextEditingController();
  final _EmailController=new TextEditingController();
  final _TypeOfContriController=new TextEditingController();
  final _yearOrAlumniController=new TextEditingController();
  final firestore1= FirebaseFirestore.instance.collection('contributers');
//   TextEditingController _nameController = new TextEditingController();
//   TextEditingController _emailController = new TextEditingController();
//   TextEditingController _typeOfContriController = new TextEditingController();
//  TextEditingController _year_alumniController = new TextEditingController();
//   final fireStore1 = FirebaseFirestore.instance.collection('contributers');
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
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: Colors.white38,
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
              //color: Colors.white,
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "C O N T R I B U T E",
                            style: GoogleFonts.montserrat(
                                color: darkColor,
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
                            controller: _NameController,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                hintText: 'Full Name',
                                labelText: 'Full Name',
                                suffixIcon: Icon(Icons.person)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: _EmailController,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                hintText: 'Email',
                                labelText: 'Email',
                                suffixIcon: Icon(Icons.email)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: _yearOrAlumniController,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                hintText: 'Year/Alumni',
                                labelText: 'Year/Alumni',
                                suffixIcon: Icon(Icons.person_4)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller:_TypeOfContriController,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                hintText: 'Type Of Contribution',
                                labelText: 'Type Of Contribution',
                                suffixIcon: Icon(Icons.code)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                           ElevatedButton(
                              onPressed: () {
                                setState(() {});
                                String id = DateTime.now()
                                    .millisecondsSinceEpoch
                                    .toString();
                               firestore1.doc(id).set({
                                  'name1': _NameController.text.toString(),
                                  'email1': _EmailController.text.toString(),
                                  'type of contribution.':
                                      _TypeOfContriController.text.toString(),
                                  'year/alumni':
                                      _yearOrAlumniController.text.toString(),
                                  'id1': id,
                                  
                                }).then((value) {
                                  Utils().toastMessage("SUBMISSION SUCCESSFUL !");
                                  // Get.snackbar("Congratulations!", "Submission Succesful! ❤️",
                                  //     colorText: Colors.white,
                                  //    backgroundColor: Color.fromARGB(255, 105, 66, 170),

                                  //     snackPosition: SnackPosition.BOTTOM);
                                }).onError((error, stackTrace) {
                                  Utils().toastMessage(error.toString());
                                });
                              },
                              
                              child: Text('send')),
                              
                          SizedBox(
                            height: 10,
                          ),
                          buttonContact(widget: widget)
                        ],
                      )),
                ),
              ),
            )),
      ),
    );
  }
}

class buttonContact extends StatelessWidget {
  const buttonContact({
    super.key,
    required this.widget,
  });

  final Contribute widget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(Responsive.isMobile(context))
          {
            return buttonContactMobile(widget: widget,);
          }
          else {
            return buttonContactDesktop(widget: widget,);
          }
        }
  );;
  }
}
class buttonContactDesktop extends StatelessWidget {
  const buttonContactDesktop({
    super.key,
    required this.widget,
  });

  final Contribute widget;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Wanna Contact us?",
            style: TextStyle(
                color:
                    const Color.fromARGB(255, 89, 88, 88),
                fontSize: 14),
          ),
          InkWell(
            onTap: () {
              widget.onContactSelected();
            },
            child: Row(
              children: [
                Text(
                  "CONTACT US ",
                  style: fontTabBar2.copyWith(
                      color: kPrimaryColor),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.arrow_forward_sharp),
              ],
            ),
          ),
        ]);
  }
}

class buttonContactMobile extends StatelessWidget {
  const buttonContactMobile({
    super.key,
    required this.widget,
  });

  final Contribute widget;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Wanna Contact us?",
            textAlign: TextAlign.right,
            style: TextStyle(
                color:
                    const Color.fromARGB(255, 89, 88, 88),
                fontSize: 14),
          ),
          InkWell(
            onTap: () {
              widget.onContactSelected();
            },
            child: Row(
              children: [
                Text(
                  "CONTACT US ",
                  style: fontTabBar2.copyWith(
                      color: kPrimaryColor),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.arrow_forward_sharp),
              ],
            ),
          ),
        ]);
  }
}

