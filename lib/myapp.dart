import 'package:flutter/material.dart';
import 'package:nikki_app/views/my_splash.dart';
import 'views/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nikki App',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MySplash(
          nextWidget: MyHomePage(
        title: 'Nikki App',
      )),
    );
  }
}
