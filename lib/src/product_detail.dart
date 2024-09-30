import 'package:flutter/material.dart';
import 'package:medappjp/components/add_to_cart_products.dart';
import 'package:medappjp/components/buttonone.dart';
import 'package:medappjp/components/image_slider_product.dart';
import 'package:medappjp/src/cart_page.dart';

class ProductDetails extends StatefulWidget {
  final List<Widget> cartItems;
  final int priceOfProduct;

  const ProductDetails({Key? key, required this.priceOfProduct, required this.cartItems})
      : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // List<Widget> cartItems = [];
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
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
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
            ImageSliderProduct(
                priceOfProduct: widget.priceOfProduct,
                onAddToCart: () {
                  widget.cartItems.add(
                    ListingProducts(
                      newPrice: 0,
                      capacity: 0,
                      price: widget.priceOfProduct.toString(),
                    ),
                  );
                }),
            SizedBox(
              height: 30,
            ),
            Button1(
              label: "Go to Cart",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CartPage(
                      cartItemss: widget.cartItems,
                    ),
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
