import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:url_strategy/url_strategy.dart';
import 'constant/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: elevatedButtonThemeData,
      ),
      home: const HomeScreen(),
    );
  }
}
