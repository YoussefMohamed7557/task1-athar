import 'package:aman_notification_screen/utilities/app_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class  AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF08131F),
            Color(0xFF0E1720)
          ]
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: AppUtility.getText('اعدادات الحساب', 22  , Colors.white),
          actions:[ Container(
        margin: const EdgeInsets.all(8),
        width: 34.h,// MediaQuery.of(context).size.height * 34 / 812,
        height: 34.w,//MediaQuery.of(context).size.height * 34 / 812,
        decoration:  BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.4),
            borderRadius: BorderRadius.all(Radius.circular(9.r))),
        child: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
        ),
      ),
    ]),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 30.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: AppUtility.getText('اسم الطفل', 18, Colors.white,fontWeight: FontWeight.normal),
              ),
              AppUtility.getAccountInfoContainer([AppUtility.getText('مارتن', 14, Colors.white,fontWeight: FontWeight.normal)]),
             SizedBox(height: 8.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: AppUtility.getText('العمر', 18, Colors.white,fontWeight: FontWeight.normal),
              ),
              AppUtility.getAccountInfoContainer([AppUtility.getText('9 سنوات ', 14, Colors.white,fontWeight: FontWeight.normal)]),
              AppUtility.getAccountInfoContainer([AppUtility.getText('مسح الحساب', 14, Colors.red,fontWeight: FontWeight.normal),
                SizedBox(width: 8.w,),
                SvgPicture.asset(
                  'assets/icons/trash.svg',
                  color: Colors.red,
                ),]),
            ],
          ),
        ),
      ),
    );
  }
}
