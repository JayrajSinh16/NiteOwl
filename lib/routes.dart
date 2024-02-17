import 'package:flutter/material.dart';
import 'package:niteowl/common/widgets/error.dart';
import 'package:niteowl/features/auth/screens/login_screen.dart';
import 'package:niteowl/features/auth/screens/otp_screen.dart';
import 'package:niteowl/features/auth/screens/user_infomation_screen.dart';
import 'package:niteowl/features/select_contacts/screens/select_contacts_screen.dart';
import 'package:niteowl/screens/mobile_chat_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OPTScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OPTScreen(
          verificationId: verificationId,
        ),
      );
    case UserInformationScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserInformationScreen(),
      );
    case SelectContactScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SelectContactScreen(),
      );
    case MobileChatScreen.routeName:
      final arguments = settings.arguments as Map<String, dynamic>;
      final name = arguments['name'];
      final uid = arguments['uid'];
      return MaterialPageRoute(
        builder: (context) => 
          MobileChatScreen(name: name,uid: uid,),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(
            error: "This Page doesn't exits",
          ),
        ),
      );
  }
}