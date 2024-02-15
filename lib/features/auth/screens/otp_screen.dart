import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:niteowl/colors.dart';
import 'package:niteowl/features/auth/controller/auth_controller.dart';

class OPTScreen extends ConsumerWidget {
  static const String routeName = '/otp-screen';
  final String verificationId;

  const OPTScreen({
    super.key,
    required this.verificationId,
  });

  void verifyOTP(BuildContext context, String userOTP, WidgetRef ref) {
    ref.read(authControllerProvider).verifyOTP(
          context,
          verificationId,
          userOTP,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Verifying your number"),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text("We have sent an SMS with a code."),
            SizedBox(
              width: size.width * 0.5,
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  if (value.length == 6) {
                    // print('verifying OPT');
                    verifyOTP(
                      context,
                      value.trim(),
                      ref,
                    );
                  }
                  // print('function kam kar raha hai !!!');
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    hintText: '------',
                    hintStyle: TextStyle(
                      fontSize: 30,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
