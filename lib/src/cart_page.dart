// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medappjp/components/add_to_cart_products.dart';

class CartPage extends StatefulWidget {
  final List<Widget> cartItemss;
  const CartPage({Key? key, required this.cartItemss}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int capacity = 0;
  int price = 550;
  int newPrice = 0;
  // List<Widget> cartItems = [];
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
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
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
                ),
              ],
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.cartItemss.length,
              itemBuilder: (context, index) => ListingProducts(
                onDelete: () {
                  setState(() {
                    widget.cartItemss.removeAt(index);
                  });
                },
                onPriceAdd: () {
                  setState(() {
                    capacity++;
                    newPrice = price * capacity;
                  });
                },
                onDeleteCapacity: () {
                  if (capacity >= 1) {
                    setState(() {
                      capacity--;
                      newPrice = price * capacity;
                    });
                  } else {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Abnormal h kya"),
                      ),
                    );
                  }
                },
                capacity: capacity,
                newPrice: newPrice,
                price: price.toString(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
