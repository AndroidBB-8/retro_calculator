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
  var input_eqn = [];
  var nums_and_ops = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, "+", "-", "/", "x"];
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
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "hk",
                  style:
                      GoogleFonts.bebasNeue(fontSize: 50, color: Colors.grey),
                ),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "987",
                  style:
                      GoogleFonts.bebasNeue(fontSize: 100, color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              child: const SizedBox(
                height: 20,
                width: 410,
              ),
            ),
            Container(
              color: Colors.yellow,
              child: const SizedBox(
                height: 20,
                width: 410,
              ),
            ),
            // Horizontal arrangement of widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonMaker(text: "AC"),
                ButtonMaker(text: "C"),
                ButtonMaker(text: "("),
                ButtonMaker(text: ")"),
              ],
            ),
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
        ),
      ),
    );
  }
}

calc_input(String symbol) {}
