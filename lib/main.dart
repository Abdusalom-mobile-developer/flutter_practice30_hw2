import 'package:flutter/material.dart';
import 'package:flutter_practice30_hw2/models/hive.dart';
import 'package:flutter_practice30_hw2/models/utils.dart';
import 'package:flutter_practice30_hw2/pages/home_page.dart';
import 'package:flutter_practice30_hw2/pages/sign_in_page.dart';
import 'package:flutter_practice30_hw2/pages/sign_up_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("small_database");
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Utils.d("Sign in info: ${HiveUsage.getData("signInInfo").toString()}");
    Utils.d("Sign up info: ${HiveUsage.getData("signUpInfo").toString()}");
    Utils.d("User registered before: ${HiveUsage.getData("isRegistered").toString()}");
    navigateToPage();
  }

  int _currentPageIndex = 0;
  void navigateToPage() {
    String response = HiveUsage.getData("isRegistered");
    if (response == "true") {
      _currentPageIndex = 2;
    }
  }

  var pagesList = [
    SignInPage(),
    SignUpPage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pagesList[_currentPageIndex],
      routes: {
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context) => SignUpPage(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
