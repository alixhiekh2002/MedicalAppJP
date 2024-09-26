// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Your Cart",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text(
                  "2 items in your Cart",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 148, 144, 144),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(0xff4157FF),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Add More",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff4157FF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 90,
              width: 322,
              
            )
          ],
        ),
      ),
    );
  }
}
