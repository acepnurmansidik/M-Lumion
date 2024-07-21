import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/img_splash.png'))),
        ),
      ),
    );
  }
}
