// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 23, right: 23, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Profile",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 62,
                  width: 63,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.purple, width: 2.0)),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/best.jpeg"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi!, Muhammad Ali",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 182, 172, 172)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Welcome to Quick Medical Store",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text("Edit Profile"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text("My Orders"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text("Billing"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text("Faq"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
