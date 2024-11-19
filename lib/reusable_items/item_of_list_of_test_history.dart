import 'package:awesome_circular_chart/awesome_circular_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/app_utility.dart';
class ItemOfStOfTestHistory extends StatelessWidget {
  ItemOfStOfTestHistory({super.key});
  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      margin: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
      height: 100.h, // Adjusted height for a balanced look
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.1),
        border: Border.all(
          color: const Color.fromRGBO(42, 146, 244, 1),
          width: 0.5.w,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
              alignment: Alignment.center,
              children: [
                AnimatedCircularChart(
                  key: GlobalKey(),
                  size: Size(76.w, 76.w),
                  initialChartData: <CircularStackEntry>[
                    CircularStackEntry(
                      <CircularSegmentEntry>[
                        CircularSegmentEntry(80, Colors.blue[400], rankKey: 'completed'),
                        CircularSegmentEntry(20, Colors.blueGrey[600], rankKey: 'remaining'),
                      ],
                      rankKey: 'progress',
                    ),
                  ],
                  chartType: CircularChartType.Radial,
                  percentageValues: true,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'نتيجه الاختبار\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 8.sp, // Adjust size using screen_util
                        ),
                      ),
                      TextSpan(
                        text: '80',
                        style: TextStyle(
                          color:Color(0xFF2A92F4),
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp,
                        ),
                      ),
                      TextSpan(
                        text: ' / 100',
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 7.sp,
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppUtility.getText('اختبار الابطال', 16.sp, Colors.white),
                  AppUtility.getText('تعليمى', 14.sp, Color.fromRGBO(
                      140, 139, 141, 1.0),fontWeight: FontWeight.normal),
                  AppUtility.getText('تم اعاده الاختبار مرتين', 14.sp, Color.fromRGBO(
                      140, 139, 141, 1.0),fontWeight: FontWeight.normal),
                ],
              ), // Reduced font size for better layout fit
              SizedBox(width: 8.w),
              SizedBox(
                height: 60.h, // Adjusted size for the avatar
                width: 60.w,
                child: Image.asset(
                  'assets/avatar2.png',
                  fit: BoxFit.fitHeight, // Ensures the image fits well
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
