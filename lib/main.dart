import 'package:flutter/material.dart';
import 'package:my_resume/views/about_me.dart';
import 'package:my_resume/views/homepage.dart';
import 'package:my_resume/views/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark), // standard dark theme
      themeMode: ThemeMode.dark, // device controls theme
      home: PageView(
        children: [
          HomePage(),
          AboutMe(),
          ProjectsPage()
        ],
      ),
    );
  }
}