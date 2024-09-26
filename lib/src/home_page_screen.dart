// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:medappjp/components/grid_container.dart';
import 'package:medappjp/components/search_field_homepage.dart';
import 'package:medappjp/src/product_detail.dart';
import 'package:medappjp/src/profile_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 230, left: 24, right: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 3, right: 3, top: 10),
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 228, 228),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFF9598),
                                    Color(0xffFF70A7),
                                  ],
                                ),
                              ),
                              child: CircleAvatar(
                                  backgroundColor: Colors.transparent),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Dental",
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 3, right: 3, top: 10),
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 228, 228),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff19E5A5),
                                    Color(0xff15BD92),
                                  ],
                                ),
                              ),
                              child: CircleAvatar(
                                  backgroundColor: Colors.transparent),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Wellness",
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 3, right: 3, top: 10),
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 228, 228),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFFC06F),
                                    Color(0xffFF793A),
                                  ],
                                ),
                              ),
                              child: CircleAvatar(
                                  backgroundColor: Colors.transparent),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Homeo",
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 3, right: 3, top: 10),
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 228, 228),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff4DB7FF),
                                    Color(0xff3E7DFF),
                                  ],
                                ),
                              ),
                              child: CircleAvatar(
                                  backgroundColor: Colors.transparent),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Eye Care",
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Image(
                    image: AssetImage("assets/promoo.png"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        "Deals Of the Day",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "More",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ItemOfGrid(),
                      SizedBox(
                        width: 14,
                      ),
                      ItemOfGrid(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ItemOfGrid(),
                      SizedBox(
                        width: 14,
                      ),
                      ItemOfGrid(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ItemOfGrid(),
                      SizedBox(
                        width: 14,
                      ),
                      ItemOfGrid(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //appbar 
          Container(
            height: 190,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, right: 20, left: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ProfileUser(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/best.jpeg"),
                        ),
                      ),
                      Spacer(),
                      Image.asset("assets/bell.png"),
                      SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ProductDetails(),
                            ),
                          );
                        },
                        child: Image.asset("assets/cart.png"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text(
                    "Hi, Muhammad Ali",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text(
                    "Welcome to Quick Medical Store",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
                margin: EdgeInsets.only(top: 162),
                child: MedicineSearch(
                    placeholder: "Search Medicine and HealthCare products")),
          ),
        ],
      ),
    );
  }
}
