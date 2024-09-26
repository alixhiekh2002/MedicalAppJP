import 'package:flutter/material.dart';
import 'package:medappjp/components/buttonone.dart';
import 'package:medappjp/components/image_slider_product.dart';
import 'package:medappjp/src/cart_page.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back),
                Spacer(),
                Image(
                  image: AssetImage("assets/bell.png"),
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Image(
                  image: AssetImage("assets/cart.png"),
                  color: Colors.black,
                )
              ],
            ),
            Text(
              "Sugar Free Gold Low Calories",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Lorem ispum 19",
              style: TextStyle(fontSize: 14, color: Colors.grey[400]),
            ),
            ImageSliderProduct(),
            SizedBox(
              height: 30,
            ),
            Button1(
              label: "Go to Cart",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CartPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
