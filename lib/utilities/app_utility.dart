import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppUtility{
  static Widget getText(String title,double textSize,Color color){
    return Text(
      title,style:GoogleFonts.almarai(
      color: color,
      fontSize: textSize,
      fontWeight: FontWeight.w700,
      height:  33 / 24
    ),
      textAlign: TextAlign.right,
    );
  }
}