import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retro_calculator/widgets/button_maker.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var answer = "";
  var nums_and_ops = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    "+",
    "-",
    "/",
    "x"
  ].toList();
  late int firstNum, secondNum;
  String history = "", textToDisplay = "", res = "", operation = "";
  void btnOnClick(String btnVal) {
    setState(() {});
    print(btnVal);
    if (btnVal == "C") {
      textToDisplay = "";
    } else if (btnVal == "AC") {
      textToDisplay = "";
      history = "";
    }
    for (var ele in nums_and_ops) {
      if (btnVal == ele) {
        textToDisplay = "$textToDisplay$btnVal";
        history = "$history$btnVal";
      } else {
        continue;
      }
    }
    evaluate() {
      String finaluserinput = textToDisplay.replaceAll("x", "*");
      Parser p = Parser();
      Expression exp = p.parse(finaluserinput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      answer = eval.toString();
      textToDisplay = answer;
      history = "$answer\nis";
    }

    if (btnVal == "=") {
      evaluate();
    }
  }

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
                  history,
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
                  textToDisplay,
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
                ButtonMaker(text: "AC", callback: btnOnClick),
                ButtonMaker(text: "C", callback: btnOnClick),
                ButtonMaker(text: "(", callback: btnOnClick),
                ButtonMaker(text: ")", callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonMaker(text: "7", callback: btnOnClick),
                ButtonMaker(text: "8", callback: btnOnClick),
                ButtonMaker(text: "9", callback: btnOnClick),
                ButtonMaker(text: "/", callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonMaker(text: "4", callback: btnOnClick),
                ButtonMaker(text: "5", callback: btnOnClick),
                ButtonMaker(text: "6", callback: btnOnClick),
                ButtonMaker(text: "x", callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonMaker(text: "1", callback: btnOnClick),
                ButtonMaker(text: "2", callback: btnOnClick),
                ButtonMaker(text: "3", callback: btnOnClick),
                ButtonMaker(text: "-", callback: btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonMaker(text: ".", callback: btnOnClick),
                ButtonMaker(text: "0", callback: btnOnClick),
                ButtonMaker(text: "=", callback: btnOnClick),
                ButtonMaker(text: "+", callback: btnOnClick),
              ],
            )
          ],
        ),
      ),
    );
  }
}

calc_input(String symbol) {}
