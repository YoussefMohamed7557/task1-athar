import 'package:aman_notification_screen/model/notifications_provider.dart';
import 'package:aman_notification_screen/screens/notification_screen.dart';
import 'package:aman_notification_screen/screens/story_reading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) {
      return NotificationsProvider();
    },
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      locale: const Locale('ar'), // Set app locale to Arabic
      debugShowCheckedModeBanner: false,
      home: StoryReading(),
    );
  }
}


