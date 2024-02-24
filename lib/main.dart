import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tutoria/screens/signup_screen.dart';
import 'package:tutoria/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screentype) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Tutoria",
          theme: ThemeData(textTheme: AppTheme.lightTexTheme),
          home: const Scaffold(
            body: SignupScreen(),
          ),
        );
      },
    );
  }
}
