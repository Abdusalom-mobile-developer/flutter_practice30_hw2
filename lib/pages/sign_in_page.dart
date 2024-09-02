import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SignInPage extends StatefulWidget {
  static final String id = "sign_in_page";
  const SignInPage({
    super.key,
  });

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 35),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 28,
                        ),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/image1.jpg"))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Welcome",
                          style: TextStyle(color: Colors.white38, fontSize: 22),
                        ),
                        Transform.translate(
                          offset: Offset(0, -4),
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white, fontSize: 44),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
                Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(55),
                              topRight: Radius.circular(55))),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textFieldMaker(
                                "Email", "Enter Email", _emailController),
                            textFieldMaker("Password", "Enter Password",
                                _passwordController),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xFF09736F),
                                  borderRadius: BorderRadius.circular(9)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  )),
                            ),
                            SizedBox(height: 25),
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
                              height: 10,
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
                      )),
                  flex: 2,
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Color(0xFF09736F),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
