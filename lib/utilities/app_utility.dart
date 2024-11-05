import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppUtility{
  static Widget getText(String title,double textSize,Color color,{FontWeight fontWeight=FontWeight.w700,TextAlign textAlign = TextAlign.right}){
    return Text(
      title,style:GoogleFonts.almarai(
      color: color,
      fontSize: textSize,
      fontWeight: fontWeight,
      height:  33 / 24
    ),
      textAlign: textAlign,
    );
  }
}