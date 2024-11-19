import 'package:awesome_circular_chart/awesome_circular_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/app_utility.dart';
class  ItemOfListOfActivity extends StatelessWidget {
  ItemOfListOfActivity({super.key});
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
          SizedBox(
            width: 50.w, // Increased size for better visibility
            height: 50.h,
            child:AnimatedCircularChart(
              key: _chartKey,
              size: Size(76.w, 76.w),
              initialChartData: <CircularStackEntry>[
                new CircularStackEntry(
                  <CircularSegmentEntry>[
                    new CircularSegmentEntry(
                      80,
                      Colors.blue[400],
                      rankKey: 'completed',
                    ),
                    new CircularSegmentEntry(
                      100-80,
                      Colors.blueGrey[600],
                      rankKey: 'remaining',
                    ),
                  ],
                  rankKey: 'progress',
                ),
              ],
              chartType: CircularChartType.Radial,
              percentageValues: true,
              holeLabel: '${80}%',//percentage formula 38/(sum of values)
              labelStyle: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ) ,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppUtility.getText('تعليمى', 18, Colors.white),
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
