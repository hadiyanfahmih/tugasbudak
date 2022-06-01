import 'package:bookinghotel/booking/booking1.dart';
import 'package:bookinghotel/booking/booking2.dart';
import 'package:bookinghotel/booking/booking3.dart';
import 'package:bookinghotel/home.dart';
import 'package:flutter/material.dart';
import 'package:bookinghotel/splashscreen_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RISMA',
      home: SplashScreenPage(),
    );
  }
}
