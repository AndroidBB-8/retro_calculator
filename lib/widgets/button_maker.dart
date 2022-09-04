import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retro_calculator/main.dart';

class ButtonMaker extends StatelessWidget {
  final String text;
  ButtonMaker({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
              splashFactory: InkRipple.splashFactory,
              primary: Color.fromRGBO(95, 113, 97, 1.0)),
          onPressed: calc_input(text),
          child: Text(
            text,
            style: GoogleFonts.dosis(
              textStyle: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
