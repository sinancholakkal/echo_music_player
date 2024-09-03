import 'package:echo_beats_music/Presentation/Pages/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    splashTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          //gradient: AppColors.background
          color: Theme.of(context).scaffoldBackgroundColor
        ),
        child: Center(
          child: Lottie.asset("asset/Animation - 1725032034100.json"),
        ),
      ),
    );
  }

  Future<void> splashTime() async {
    await Future.delayed(const Duration(seconds: 3));
    // Navigator.of(context).pushReplacementNamed('login',);
    Get.off(()=>const ScreenLogin(),
    transition: Transition.circularReveal,
    duration: const Duration(seconds: 2)
    );
  }
}
