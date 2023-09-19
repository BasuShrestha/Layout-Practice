// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_app/Views/Home_view.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white70,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Color.fromARGB(255, 87, 35, 220),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeView(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 87, 35, 220),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pets,
              size: 30,
            ),
            label: 'Pet cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              size: 30,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
