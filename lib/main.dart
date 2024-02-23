import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:niteowl/colors.dart';
import 'package:niteowl/common/widgets/error.dart';
import 'package:niteowl/common/widgets/loader.dart';
import 'package:niteowl/features/auth/controller/auth_controller.dart';
import 'package:niteowl/features/landing/screens/landing_screen.dart';
import 'package:niteowl/firebase_options.dart';
import 'package:niteowl/routes.dart'; 
import 'package:niteowl/screens/mobile_layout_screen.dart';
import 'package:niteowl/screens/web_layout_screen.dart';
import 'package:niteowl/utils/responsive_layout.dart';
 


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NiteOwl',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          color: appBarColor,
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: ref.watch(userDataAuthProvider).when(
            data: (user) {
              if (user == null) {
                return const LandingScreen();
              }
              return const MobileLayoutScreen();
            },
            error: (error, trace) {
              return ErrorScreen(error: error.toString());
            },
            loading: () => const Loader(),
          ),
    );
  }
}
