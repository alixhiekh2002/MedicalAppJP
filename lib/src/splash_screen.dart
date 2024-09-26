import 'package:flutter/material.dart';
import 'package:medappjp/src/signup_screenn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SignUp(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/splash.png"),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
