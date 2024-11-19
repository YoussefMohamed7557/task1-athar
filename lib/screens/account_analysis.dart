import 'package:aman_notification_screen/reusable_items/screen_analysis_the_tab_of_Tests.dart';
import 'package:aman_notification_screen/reusable_items/screen_analysis_the_tab_of_activity.dart';
import 'package:aman_notification_screen/reusable_items/screen_analysis_the_tab_of_using.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/app_utility.dart';

class AccountAnalysis extends StatefulWidget {
  const AccountAnalysis({super.key});

  @override
  State<AccountAnalysis> createState() => _AccountAnalysisState();
}

class _AccountAnalysisState extends State<AccountAnalysis> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = GoogleFonts.almarai(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    height:  33 / 24
    );
    final colorList = <Color>[
      Theme.of(context).primaryColor,
      Colors.grey,
    ];
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFF08131F), Color(0xFF0E1720)]),
      ),
      child: DefaultTabController(
        length: 3,
        initialIndex: 2,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: AppUtility.getText('تحلبلات الحساب', 22, Colors.white),
            actions: [
              Container(
                margin: const EdgeInsets.all(8),
                width: 34.h,
                height: 34.w,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                  borderRadius: BorderRadius.all(Radius.circular(9.r)),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              dividerColor: Colors.transparent,
              indicator: CustomTabBarIndicator(
                width: 8.w, // Custom width for the indicator
                color: const Color(0xFF2A92F4), // Indicator color
              ),
              labelColor: const Color(0xFF2A92F4), // Color of the selected tab's text
              unselectedLabelColor: Colors.white, // Color of unselected tabs' text
              tabs: [
                Tab(
                  child: Text(
                    'الاختبارات',
                    style: style,
                  ),
                ),
                Tab(
                  child: Text(
                    'الأنشطه',
                    style: style,
                  ),
                ),
                Tab(
                  child: Text(
                    'الاستخدام',
                    style: style,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children:  <Widget>[
              ScreenAnalysisTheTabOfTests(),
              ScreenAnalysisTheTabOfActivity(),
              ScreenAnalysisTheTabOfUsing(),
            ],
          ),

        ),
      ),
    );
  }
}

/// Custom Indicator Implementation
class CustomTabBarIndicator extends Decoration {
  final double width;
  final Color color;

  CustomTabBarIndicator({required this.width, required this.color});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomTabBarPainter(width: width, color: color);
  }
}

class _CustomTabBarPainter extends BoxPainter {
  final double width;
  final Color color;

  _CustomTabBarPainter({required this.width, required this.color});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final double centerX = offset.dx + configuration.size!.width / 2;
    final double bottom = offset.dy + configuration.size!.height;

    final Rect rect = Rect.fromLTWH(
      centerX - width / 2,
      bottom - 5,
      width,
      5, // Indicator thickness
    );

    final RRect roundedRect = RRect.fromRectAndRadius(rect, Radius.circular(2.r));
    canvas.drawRRect(roundedRect, paint);
  }
}
