import 'package:duplicate_yoga/page/apiPage.dart';
import 'package:duplicate_yoga/page/firstPage.dart';
import 'package:duplicate_yoga/page/secondPagee.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: firstPage(),
    );
  }
}


