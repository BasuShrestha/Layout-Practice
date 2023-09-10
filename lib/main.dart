// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white70,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
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
      appBar: AppBar(
        title: Text(
          "Shizuku",
        ),
        actions: [
          Icon(
            Icons.settings,
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 0,
                  child: Text("My Account"),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Logout"),
                ),
              ];
            },
          )
        ],
        elevation: 0,
        bottomOpacity: 0,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            color: Colors.white70,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 227, 249),
                    borderRadius: BorderRadius.circular(28)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 209, 196, 251),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.error_outline_outlined,
                        size: 25,
                        weight: 500,
                      ),
                    ),
                    Text(
                      "Shizuku is not running",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 227, 249),
                    borderRadius: BorderRadius.circular(28)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 196, 251),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.wifi,
                            weight: 500,
                          ),
                        ),
                        Text(
                          "Start via Wireless debugging",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 18),
                      child: Text(
                        "On Android 11 or above, you can enable Wireless debugging and start Shizuku directly from your device, without connecting to a computer.",
                        style: TextStyle(),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 18),
                      child: Text(
                        "Please view the step-by-step guide first.",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 18),
                      child: FilledButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 81, 55, 176),
                          ),
                          padding: MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 20),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.web_stories_outlined,
                          size: 20,
                        ),
                        label: Text("Step-by-step guide"),
                      ),
                    ),
                    FilledButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 81, 55, 176),
                        ),
                        padding: MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 20),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.join_inner,
                        size: 20,
                      ),
                      label: Text("Pairing"),
                    ),
                    FilledButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 81, 55, 176),
                        ),
                        padding: MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 20),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        size: 20,
                      ),
                      label: Text("Start"),
                    ),
                    // ElevatedButton.icon(
                    //   style: ButtonStyle(
                    //       backgroundColor: MaterialStatePropertyAll<Color>(
                    //         Color.fromARGB(255, 81, 55, 176),
                    //       ),
                    //       shape: MaterialStateOutlinedBorder),
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.web_stories_outlined,
                    //   ),
                    //   label: Text("Step-by-step guide"),
                    // ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 227, 249),
                    borderRadius: BorderRadius.circular(28)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 196, 251),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.android,
                            weight: 500,
                          ),
                        ),
                        Text(
                          "Start by connecting to a computer",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 18),
                      child: RichText(
                        textScaleFactor: 1.09,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "For devices without root, you need to use adb to start Shizuku (requires computer connection). This process needs to be repeated every time the device is restarted. Please ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: "read the help.",
                              style: TextStyle(
                                color: Color.fromARGB(255, 81, 55, 176),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 18),
                      child: FilledButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 81, 55, 176),
                          ),
                          padding: MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 25),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.terminal_sharp,
                          size: 20,
                        ),
                        label: Text("View command"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
