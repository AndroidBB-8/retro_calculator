import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retro_calculator/widgets/button_maker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromRGBO(245, 237, 220, 1.0),
          // Vertical arrangement of widgets
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Horizontal arrangement of widgets
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonMaker(text: "7"),
                  ButtonMaker(text: "8"),
                  ButtonMaker(text: "9"),
                  ButtonMaker(text: "/"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonMaker(text: "4"),
                  ButtonMaker(text: "5"),
                  ButtonMaker(text: "6"),
                  ButtonMaker(text: "x"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonMaker(text: "1"),
                  ButtonMaker(text: "2"),
                  ButtonMaker(text: "3"),
                  ButtonMaker(text: "-"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonMaker(text: "."),
                  ButtonMaker(text: "0"),
                  ButtonMaker(text: "="),
                  ButtonMaker(text: "+"),
                ],
              )
            ],
          )),
    );
  }
}
