import 'package:flutter/material.dart';
import 'package:lumion/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashPage(),
      routes: {
        '/splash-screen': (context) => const SplashPage(),
      },
    );
  }
}
