import 'package:flutter/material.dart';
import 'package:instagram_clone_app/components/bottom-navbar.dart';
import 'package:instagram_clone_app/components/timeline_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: TimelineAppbar(),
        body: Column(),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}
