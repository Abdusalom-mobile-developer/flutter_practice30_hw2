import 'package:flutter/material.dart';
import 'package:flutter_practice30_hw2/pages/sign_in_page.dart';

void main() {
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
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
      routes: {
        SignInPage.id: (context) => SignInPage(),
      },
    );
  }
}



