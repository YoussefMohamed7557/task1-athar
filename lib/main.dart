import 'package:aman_notification_screen/model/app_strings.dart';
import 'package:aman_notification_screen/model/notifications_provider.dart';
import 'package:aman_notification_screen/screens/story_details.dart';
import 'package:aman_notification_screen/screens/story_details_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) {
      return NotificationsProvider();
    },
    child: MyApp(),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       locale: const Locale('ar'), // Set app locale to Arabic
//       debugShowCheckedModeBanner: false,
//       home: StoryDetails(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: const Locale('ar'),
          home: child,
        );
      },
      child: StoryDetails2(),
    );
  }
}
