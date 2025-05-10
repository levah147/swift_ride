// ignore_for_file: unused_import

import 'package:bolte/bottom_nav.dart';
import 'package:bolte/pages/OTPVerificationScreen.dart';
import 'package:bolte/pages/VerificationScreen.dart';
import 'package:bolte/pages/slpashscreen.dart';
import 'package:bolte/pages/sp.dart';
import 'package:flutter/material.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    // Log error or send to analytics
    print('Caught Flutter error: ${details.exception}');
  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bolt',
      debugShowCheckedModeBanner: false,
      // home: VerificationScreen(), // This must match the widget from earlier
      // home: SplashScreen(),
      home: SplashPage(),
      // home: OtpVerificationScreen(phoneNumber: '+2348167792934',),
      // home: BottomNavBar(),
    );
  }
}
