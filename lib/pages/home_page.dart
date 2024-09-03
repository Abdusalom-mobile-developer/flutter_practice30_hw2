import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF09736F),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to",
              style: TextStyle(color: Colors.white38, fontSize: 22),
            ),
            Transform.translate(
              offset: Offset(0, -4),
              child: Text(
                "Home Page",
                style: TextStyle(color: Colors.white, fontSize: 44),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
