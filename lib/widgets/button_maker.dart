import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMaker extends StatelessWidget {
  final String text;

  const ButtonMaker({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: SizedBox(
          width: 70,
          height: 70,
          child: TextButton(
              onPressed: () {},
              child: Text(
                text,
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(fontSize: 24, color: Colors.black)),
              )),
        ));
  }
}
