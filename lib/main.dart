import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tutoria/screens/chatscreen/homechat.dart';
import 'package:tutoria/screens/homescreen/homescreen.dart';
import 'package:tutoria/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ResponsiveSizer(builder: (context, orientation, screentype) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "TUTORIA",
        theme: ThemeData(textTheme: AppTheme.lightTexTheme),
        home: const Scaffold(body: HomeScreen()),
      );
    });



    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: const HomeScreen(),
    // );
  }
}

