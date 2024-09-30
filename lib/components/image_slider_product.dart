// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medappjp/src/cart_page.dart';

class ImageSliderProduct extends StatefulWidget {
  final int priceOfProduct;
  final Function() onAddToCart;
  const ImageSliderProduct(
      {Key? key, required this.priceOfProduct, required this.onAddToCart})
      : super(key: key);

  @override
  State<ImageSliderProduct> createState() => _ImageSliderProductState();
}

class _ImageSliderProductState extends State<ImageSliderProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 200,
          width: double.infinity,
          child: PageView(
            scrollDirection: Axis.horizontal,
            allowImplicitScrolling: true,
            physics: ClampingScrollPhysics(),
            children: [
              Image.asset(
                "assets/product1.png",
                fit: BoxFit.contain,
              ),
              Image.asset(
                "assets/product1.png",
                fit: BoxFit.contain,
              ),
              Image.asset(
                "assets/product1.png",
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "RS.1800",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 191, 174, 174),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Rs.${widget.priceOfProduct.toString()}",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Etiam mollis",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                )
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: widget.onAddToCart,
              child: Row(
                children: [
                  Icon(
                    Icons.add_box_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Add to Cart",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Package Size",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 3, right: 3),
              height: 79,
              width: 82,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 222, 220, 220)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rs.106",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "500 pallets",
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 3, right: 3),
              height: 79,
              width: 82,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 222, 220, 220)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rs.166",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "110 pallets",
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 3, right: 3),
              height: 79,
              width: 82,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 222, 220, 220)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rs.252",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "300 pallets",
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
