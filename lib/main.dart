import 'package:app/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/customerpage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/Homepage':(context) => const HomePage(),
        '/CustomerPage':(context) => const CustomerPage()
      },
    );
  }
}
