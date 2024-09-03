import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice30_hw2/models/hive.dart';
import 'package:flutter_practice30_hw2/models/user_info_classes.dart';
import 'package:flutter_practice30_hw2/models/utils.dart';
import 'package:flutter_practice30_hw2/pages/home_page.dart';
import 'package:ionicons/ionicons.dart';

class SignUpPage extends StatefulWidget {
  static final String id = "sign_up_page";
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  // Method that makes custom textField().
  Widget textFieldMaker(
      String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 25),
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey[300]!, width: 2))),
          child: TextField(
            controller: controller,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 0,
                ),
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey[400]!),
                border: OutlineInputBorder(
                    gapPadding:
                        BouncingScrollSimulation.maxSpringTransferVelocity,
                    borderSide: BorderSide.none)),
          ),
        )
      ],
    );
  }

  // Method that helps to make custom lines
  Widget lineMaker() {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        height: 2,
        decoration: BoxDecoration(
            color: Colors.blue,
            border:
                Border(top: BorderSide(color: Colors.grey[300]!, width: 2))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF09736F),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(color: Colors.white38, fontSize: 22),
                    ),
                    Transform.translate(
                      offset: Offset(0, -4),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 44),
                      ),
                    ),
                  ]),
            ),
          ),
          Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45))),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textFieldMaker("Email", "Enter Email", _emailController),
                      textFieldMaker(
                          "Number", "Enter Number", _numberController),
                      textFieldMaker(
                          "Address", "Enter Address", _addressController),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color(0xFF09736F),
                            borderRadius: BorderRadius.circular(9)),
                        child: TextButton(
                            onPressed: () {
                              UserSignUpInfo info = UserSignUpInfo(
                                email: _emailController.text.trim(),
                                address: _addressController.text.trim(),
                                phoneNumber: _numberController.text.trim(),
                              );
                              Map<String, String> json =
                                  Utils.toJsonSignUpInfo(info);
                              HiveUsage.storeSignUpUserInfo(json);
                              HiveUsage.storeData("isRegistered", "true");
                              Navigator.popAndPushNamed(context, HomePage.id);
                            },
                            child: Text(
                              "Sign Up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          lineMaker(),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "OR",
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          lineMaker(),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Ionicons.logo_facebook,
                                color: Colors.blue[900],
                                size: 32,
                              )),
                          SizedBox(
                            width: 25,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Ionicons.logo_twitter,
                                color: Colors.blue,
                                size: 32,
                              )),
                          SizedBox(
                            width: 25,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Ionicons.logo_instagram,
                                color: Colors.red,
                                size: 32,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              flex: 3),
        ],
      ),
    );
  }
}
