import 'package:aman_notification_screen/reusable_items/item_of_list_of_test_history.dart';
import 'package:awesome_circular_chart/awesome_circular_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/app_utility.dart';
class  ScreenAnalysisTheTabOfTests extends StatelessWidget {
  ScreenAnalysisTheTabOfTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding:  EdgeInsets.all(16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppUtility.getText('اختبار 2', 16, Colors.blueAccent),
              AppUtility.getText('الاختبارات الحاليه', 20, Colors.white)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h,left: 16.h,right: 16.h),
          child: AppUtility.getText('الاختبارات التى لم ينهيها طفلك بعد', 14, Color.fromRGBO(
              196, 196, 196, 1.0),fontWeight: FontWeight.normal),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h,right: 8.h),
          child: Row(
            children: [
              getTestStatistContainer('مسلسلات', 75, 10, 8),
              getTestStatistContainer('تعليمى', 38, 10, 4),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom:12.h,left: 16.h,right: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppUtility.getText('تاريخ الاختبارات', 20, Colors.white)
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ItemOfStOfTestHistory();
            },
          ),
        )
      ],
    );
  }
  Widget getTestStatistContainer(String testRelatedTo,double percentage,int numberOfQuestions, int numberOfAnswers){
    final GlobalKey<AnimatedCircularChartState> chartKey = new GlobalKey<AnimatedCircularChartState>();

    return Expanded(
      child: Container(
        height: 205.h,
        padding: EdgeInsets.all(4.w),
        margin: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.1),
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            border: Border.all(width: 0.8.w,color: Color.fromRGBO(42, 146, 244, 0.8))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppUtility.getText(testRelatedTo, 13, Color.fromRGBO(
                196, 196, 196, 1.0),fontWeight: FontWeight.normal),
            AppUtility.getText('اختبار الابطال', 16, Colors.white),
            AnimatedCircularChart(
              key: chartKey,
              size: Size(76.w, 76.w),
              initialChartData: <CircularStackEntry>[
                new CircularStackEntry(
                  <CircularSegmentEntry>[
                    new CircularSegmentEntry(
                      75,
                      Colors.blue[400],
                      rankKey: 'completed',
                    ),
                    new CircularSegmentEntry(
                      100-75,
                      Colors.blueGrey[600],
                      rankKey: 'remaining',
                    ),
                  ],
                  rankKey: 'progress',
                ),
              ],
              chartType: CircularChartType.Radial,
              percentageValues: true,
              holeLabel: '${percentage}%',//percentage formula 38/(sum of values)
              labelStyle: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: AppUtility.getText('الاجابات ', 14, Colors.white,fontWeight: FontWeight.normal),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: SizedBox(width: 8.h,height:8.h,child:
                          Image.asset("assets/blue_circle.png",width: double.infinity,height: double.infinity,fit: BoxFit.fill,),),
                        )
                      ],
                    ),
                    AppUtility.getText('$numberOfAnswers', 14, Colors.white,fontWeight: FontWeight.normal),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: AppUtility.getText('عدد الاسئله', 14, Colors.white,fontWeight: FontWeight.normal),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: SizedBox(width: 8.h,height:8.h,child:
                          Image.asset("assets/yellow_circle.png",width: double.infinity,height: double.infinity,fit: BoxFit.fill,),),
                        )
                      ],
                    ),
                    AppUtility.getText('$numberOfQuestions', 14, Colors.white,fontWeight: FontWeight.normal),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
