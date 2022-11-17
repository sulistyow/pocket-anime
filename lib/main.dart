import 'package:flutter/material.dart';
import 'package:pocket_anime/pages/main_page.dart';
import 'package:pocket_anime/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocket Anime',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const MainPage(),
      },
    );
  }
}
