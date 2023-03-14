import 'package:flutter/material.dart';
import 'package:recipy_app/Constants/colors.dart';
import 'package:recipy_app/Constants/constants.dart';

import 'Pages/home_page.dart';

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
      title: 'food recipy',
      theme: ThemeData(
          primarySwatch: generateMaterialColor(Palette.primaryAccent),
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: HomePage(),
    );
  }
}
