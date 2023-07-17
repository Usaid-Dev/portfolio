import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'constant/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
