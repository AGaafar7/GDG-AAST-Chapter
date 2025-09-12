import 'package:flutter/material.dart';
import 'package:gdg/home_screen.dart';
import 'package:gdg/screens/screens.dart';
import 'package:gdg/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/Events": (context) => const EventsScreen(),
        "/Activities": (context) => const ActivitiesScreen(),
      },
    );
  }
}
