import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppUtility{
  static Widget getText(String title,double textSize,Color color,{FontWeight fontWeight=FontWeight.w700,TextAlign textAlign = TextAlign.right}){
    return Text(
      title,style:GoogleFonts.almarai(
      color: color,
      fontSize: textSize.sp,
      fontWeight: fontWeight,
      height:  33 / 24
    ),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }

  static Widget getAccountInfoContainer(List<Widget> content){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:16.w,vertical: 8.w),
      margin: EdgeInsets.all(16.w),
      height: 44.h,
      width: 343.w,
      decoration: BoxDecoration(
        color:const Color.fromRGBO(255, 255, 255, 0.1),
        border: Border.all(color:const Color(0xFFC0C0C0),width: 0.5.w),
        borderRadius: BorderRadius.all(Radius.circular(12.r))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children:content
      ),
    );
  }
  static Widget getScreenSettingsContainer(Widget content){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:16.w,vertical: 8.w),
      margin: EdgeInsets.only(top:16.w,left:16.w,right:16.w ),
      height: 50.h,
      width: 343.w,
      decoration: BoxDecoration(
          color:const Color.fromRGBO(255, 255, 255, 0.1),
          border: Border.all(color:const Color.fromRGBO(73 , 75, 57, 1),width: 0.5.w),
          borderRadius: BorderRadius.all(Radius.circular(12.r))
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Icon(Icons.arrow_back_ios_sharp,color: Color.fromRGBO(196, 196, 196, 1.0),),
            content,
          ]
      ),
    );
  }
}