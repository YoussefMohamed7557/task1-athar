import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/app_utility.dart';
class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 132.h,
                width: 163.w,
                child: Image.asset('assets/mom.png',fit: BoxFit.fill,width: double.infinity,height: double.infinity,)),
            AppUtility.getText('فاطمه', 16, Colors.white),

            AppUtility.getScreenSettingsContainer(Row(children: [
              AppUtility.getText('بيانات الحساب', 18,Color.fromRGBO(196, 196, 196, 1.0)),
              SizedBox(width: 8,),
              Icon(Icons.person,color:Color.fromRGBO(196, 196, 196, 1.0),)
            ],)),AppUtility.getScreenSettingsContainer(Row(children: [
              AppUtility.getText('حساباتى', 18,Color.fromRGBO(196, 196, 196, 1.0)),
              SizedBox(width: 8,),
              Icon(Icons.info_outline,color:Color.fromRGBO(196, 196, 196, 1.0),)
            ],)),AppUtility.getScreenSettingsContainer(Row(children: [
              AppUtility.getText('طلبات اطفالك', 18,Color.fromRGBO(196, 196, 196, 1.0)),
              SizedBox(width: 8,),
              Icon(Icons.sticky_note_2_outlined,color:Color.fromRGBO(196, 196, 196, 1.0),)
            ],)),AppUtility.getScreenSettingsContainer(Row(children: [
              AppUtility.getText('الاشتراكات', 18,Color.fromRGBO(196, 196, 196, 1.0)),
              SizedBox(width: 8,),
              Icon(Icons.bookmark_add_outlined,color:Color.fromRGBO(196, 196, 196, 1.0),)
            ],)),AppUtility.getScreenSettingsContainer(Row(children: [
              AppUtility.getText('واجهة التطبيق', 18,Color.fromRGBO(196, 196, 196, 1.0)),
              SizedBox(width: 8,),
              Icon(Icons.sunny,color:Color.fromRGBO(196, 196, 196, 1.0),)
            ],)),
            AppUtility.getScreenSettingsContainer(Row(children: [
              AppUtility.getText('تغيير اللغه', 18,Color.fromRGBO(196, 196, 196, 1.0)),
              SizedBox(width: 8,),
              Icon(Icons.language,color:Color.fromRGBO(196, 196, 196, 1.0),)
            ],)),
          ],)
      ),
    );
  }
}
