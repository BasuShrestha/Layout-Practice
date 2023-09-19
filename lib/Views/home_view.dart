// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:practice_app/Controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  var controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hi ${controller.userName}!",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 0,
        bottomOpacity: 0,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.white70,
      ),
      body: Container(
        color: Colors.white70,
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pet profile box
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 1,
                    offset: Offset(0, 2),
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   height: 150,
                  //   width: 150,
                  //   child: Image.asset(
                  //     'assets/Pomerian_DgB.jpg',
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        controller.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.petName,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Records box
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 204, 189, 254),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.folder_outlined,
                                size: 25,
                                color: Color.fromARGB(255, 87, 35, 220),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${controller.numberOfRecords} records',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 87, 35, 220),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Reminders box
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 204, 189, 254),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.notifications_outlined,
                                size: 25,
                                color: Color.fromARGB(255, 87, 35, 220),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${controller.numberOfReminders} reminders',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 87, 35, 220),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.orange.shade700,
                            ),
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 18),
                            ),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.add),
                          label: Text(
                            'Add record',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            TextButton.icon(
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.all(0),
                ),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 20,
                color: Color.fromARGB(255, 87, 35, 220),
              ),
              label: Text(
                'Add pet',
                style: TextStyle(
                  color: Color.fromARGB(255, 87, 35, 220),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
