import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/app_utility.dart';
class ReportWithDurationContainer extends StatelessWidget {
  const ReportWithDurationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      margin: EdgeInsets.symmetric(horizontal: 16.w,vertical:20.h),
      width:343.w,
      height: 184.h,
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.05),
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
          border: Border.all(color:Color(0xC0C0C0C0),width: 0.5.h)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppUtility.getText('التقارير', 20, Colors.white),
          Padding(
            padding: EdgeInsets.only(top: 8.h,bottom: 15.h),
            child: AppUtility.getText(' التقارير الخاصه بطفلك خلال هذه المده المحدده', 14,const Color.fromRGBO(
                196, 196, 196, 1.0),fontWeight: FontWeight.normal),
          ),
          Row(
            children: [
              getReusableContainerContent('من', '7-7-2021'),
              getReusableContainerContent('الى', '7-7-2021'),
            ],
          )
        ],
      ),
    );
  }
  Widget getReusableContainerContent(String wordOnTopOfDate,String date){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppUtility.getText(wordOnTopOfDate, 14,const Color.fromRGBO(
              196, 196, 196, 1.0),fontWeight: FontWeight.normal),
          Container(
            padding: EdgeInsets.symmetric(horizontal:8.w,vertical: 8.w),
            margin: EdgeInsets.only(top:16.w,),
            height: 58.h,
            width: 152.w,
            decoration: BoxDecoration(
                color:const Color.fromRGBO(255, 255, 255, 0.1),
                border:  Border.all(color:Color(0xFF2A92F4),width: 0.5.h),
                borderRadius: BorderRadius.all(Radius.circular(12.r))
            ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Icon(Icons.arrow_drop_down_outlined,color: Color(0xFFC0C0C0),size: 26.h,),
                  Row(
                    children: [
                      AppUtility.getText(' $date ', 18,Colors.white,fontWeight: FontWeight.normal),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 4.w),
                        child: Icon(Icons.calendar_month,color:Color(0xFF2A92F4),size: 26.h,),
                      )
                    ],
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }
}
