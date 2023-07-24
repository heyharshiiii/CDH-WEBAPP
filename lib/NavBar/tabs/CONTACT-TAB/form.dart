import 'package:cdh2/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../utils.dart';

class UserFromScreen extends StatefulWidget {
  const UserFromScreen({Key? key}) : super(key: key);

  @override
  State<UserFromScreen> createState() => _UserFromScreenState();
}

class _UserFromScreenState extends State<UserFromScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = new TextEditingController();
  final _emailController = new TextEditingController();
  final _phone_numberController = new TextEditingController();
  final _year_branchController = new TextEditingController();
  final fireStore = FirebaseFirestore.instance.collection("contact");

  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: ScreenSize.width * 0.7,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Contact Us",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: color1, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 40,),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Full Name:",style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),),
                          TextFormField(
                            // keyboardType: TextInputType.number,
                            // maxLength: 10,
                            controller: _nameController,
                            decoration: InputDecoration(
                              hintText: "Enter User Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This Field is Mandatory.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Email:",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                          ),
                          TextFormField(
                            // keyboardType: TextInputType.number,
                            // maxLength: 10,
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: "Enter Your Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This Field is Mandatory.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Contact Number:",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                          ),
                          TextFormField(
                            // keyboardType: TextInputType.number,
                            // maxLength: 10,
                            controller: _phone_numberController,
                            decoration: InputDecoration(
                              hintText: "Enter Your Contact No.",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This Field is Mandatory.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Enter Your Year/Branch:",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),),
                          TextFormField(
                            controller: _year_branchController,
                            decoration: InputDecoration(
                              hintText: "Year/Branch",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This Field is Mandatory.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: ScreenSize.width*0.4,
                      child: ElevatedButton(
                        
                        style: ElevatedButton.styleFrom(backgroundColor: color1,shadowColor: Colors.grey,elevation: 5,),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            String id =
                                DateTime.now().millisecondsSinceEpoch.toString();
                            fireStore.doc(id).set({
                              'name': _nameController.text.toString(),
                              'email': _emailController.text.toString(),
                              'contact-no.':
                                  _phone_numberController.text.toString(),
                              'year/branch':
                                  _year_branchController.text.toString(),
                              'id': id
                            }).then((value) {
                              Utils().toastMessage("SUBMISSION SUCCESSFUL !");
                              // Get.snackbar("Congratulations!", "Submission Succesful! ❤️",
                              //     colorText: Colors.white,
                              //    backgroundColor: Color.fromARGB(255, 105, 66, 170),
                    
                              //     snackPosition: SnackPosition.BOTTOM);
                            }).onError((error, stackTrace) {
                              Utils().toastMessage(error.toString());
                            });
                            Map userRequiredData = {
                              "user_name": _nameController.text,
                              "password": _emailController.text
                            };
                    
                            print(userRequiredData);
                          } else {
                            print("Not Validated");
                          }
                        },
                        child: Text('Submit',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
