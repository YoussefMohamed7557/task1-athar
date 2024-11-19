import 'package:aman_notification_screen/reusable_items/report_with_duration_container.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utilities/app_utility.dart';
import 'item_of_list_of_activity.dart';
class  ScreenAnalysisTheTabOfActivity extends StatelessWidget {
  const ScreenAnalysisTheTabOfActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ReportWithDurationContainer(),
        Padding(
          padding:  EdgeInsets.all(16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppUtility.getText('أنشطه 5', 16, Colors.blueAccent),
              AppUtility.getText('الأنشطه', 20, Colors.white)
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ItemOfListOfActivity();
            },
          ),
        )
      ],
    );
  }
}
