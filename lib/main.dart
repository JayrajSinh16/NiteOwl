import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:niteowl/colors.dart';
import 'package:niteowl/firebase_options.dart';
import 'package:niteowl/screens/mobile_layout_screen.dart';
import 'package:niteowl/screens/web_layout_screen.dart';
import 'package:niteowl/utils/responsive_layout.dart';

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
      title: 'NiteOwl',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileLayoutScreen(),
        webScreenLayout: WebLayoutScreen(),
      ),
    );
  }
}