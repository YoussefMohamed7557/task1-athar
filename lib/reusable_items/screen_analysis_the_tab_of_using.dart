import 'package:aman_notification_screen/reusable_items/report_with_duration_container.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/app_utility.dart';
class ScreenAnalysisTheTabOfUsing extends StatelessWidget {
  const ScreenAnalysisTheTabOfUsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 132.h,
            width: 163.w,
            child: Image.asset('assets/girl.png',fit: BoxFit.fill,width: double.infinity,height: double.infinity,)),
        SizedBox(height: 12.h,),
        AppUtility.getText('لولو', 16, Colors.white),
        ReportWithDurationContainer(),
        Row(
          children: [
            getUsingDurationContainer('الاستخدام الاسبوعى', '500', ' د', ' /800'),
            getUsingDurationContainer('الاستخدام اليومى', '27', ' د', ' /80'),
          ],
        ),
        Row(
          children: [
            getReadingOrWatchingTimeContainer(theStatisticRelatedTo:'وقت القراءة', totalDuration: '400', timeUnitOfDuration: ' د', increasedFromLastMonth: true, percentageOfIncreasingOrDecreasing: 23, spotList: [
              FlSpot(1, 6), // X: 2, Y: 6
              FlSpot(2, 7), // X: 4, Y: 4
              FlSpot(3, 5),
              FlSpot(4, 12), // X: 0, Y: 3
              FlSpot(5, 8), // X: 2, Y: 6
              FlSpot(6, 7), // X: 4, Y: 4
              FlSpot(7, 9),// X: 5, Y: 7
            ]),
            getReadingOrWatchingTimeContainer(theStatisticRelatedTo:'وقت المشاهده', totalDuration: '400', timeUnitOfDuration: ' د', increasedFromLastMonth: false, percentageOfIncreasingOrDecreasing: 23, spotList: [
              FlSpot(1, 2), // X: 2, Y: 6
              FlSpot(2, 4), // X: 4, Y: 4
              FlSpot(3, 5),
              FlSpot(4, 6), // X: 0, Y: 3
              FlSpot(5, 8), // X: 2, Y: 6
              FlSpot(6, 7), // X: 4, Y: 4
              FlSpot(7, 9),// X: 5, Y: 7
            ]),
          ],
        )
      ],
    );
  }
  Widget  getUsingDurationContainer(String intervalOfUsing,String actualUsingTime,String timeUnitOfActualUsingTime,String holeDuration,){
    return Expanded(
      child: Container(
        width: 163.w,
        height: 81.h,
        margin: EdgeInsets.only(left:16.w,right:16.w,bottom:16.w,),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.05),
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            border: Border.all(color:Color(0xC0C0C0C0),width: 0.5.h)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppUtility.getText(intervalOfUsing, 14, Color.fromRGBO(
                196, 196, 196, 1.0)),
            SizedBox(height: 4.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppUtility.getText(timeUnitOfActualUsingTime, 24, Color(0xFF2A92F4),),
                AppUtility.getText(actualUsingTime, 24, Color(0xFF2A92F4),),
                AppUtility.getText(holeDuration, 17, Color.fromRGBO(
                    196, 196, 196, 1.0),fontWeight: FontWeight.normal),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget getReadingOrWatchingTimeContainer(
      {
        required String theStatisticRelatedTo,
        required String totalDuration,
        required String timeUnitOfDuration,
        required bool increasedFromLastMonth,
        required double percentageOfIncreasingOrDecreasing,
        required List<FlSpot> spotList
        }){
    return Expanded(
      child: Container(
        width: 164.w,
        height: 142.h,
        margin: EdgeInsets.only(left:16.w,right:16.w,bottom:16.w,),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.05),
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            border: Border.all(color:Color(0xC0C0C0C0),width: 0.5.h)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppUtility.getText(theStatisticRelatedTo, 14, Color.fromRGBO(
                196, 196, 196, 1.0)),
            SizedBox(height: 4.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppUtility.getText(timeUnitOfDuration, 24, Color(0xFF2A92F4),),
                AppUtility.getText(totalDuration, 24, Color(0xFF2A92F4),),
              ],
            ),
            SizedBox(height: 8.h,)
            ,SizedBox(
              width: 150.w, // Set appropriate size for your chart
              height: 30.h,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false), // Hide grid lines
                  borderData: FlBorderData(show: false), // Hide borders
                  titlesData: FlTitlesData(show: false), // Hide axis titles
                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      color: const Color(0xFF2A92F4), // Line color
                      barWidth: 3,
                      isStrokeCapRound: true,
                      spots: spotList,
                      belowBarData: BarAreaData(
                        show: true,
                        color: const Color(0xFF2A92F4).withOpacity(0.1), // Fill color under the line
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:8.h),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  AppUtility.getText('منذ اخر شهر', 10, Color(0xFF2A92F4),fontWeight: FontWeight.normal),
                  AppUtility.getText('  ${increasedFromLastMonth?'+':'-'}$percentageOfIncreasingOrDecreasing%', 10, increasedFromLastMonth?Color(0xFF05CD99):Color(0xFFFD4E4E),),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
