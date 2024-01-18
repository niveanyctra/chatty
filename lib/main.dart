import 'package:chatty/pages/app.dart';
import 'package:flutter/material.dart';
// import 'pages/home_page.dart';
// import 'auth/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: MainApp(),
    );
  }
}
