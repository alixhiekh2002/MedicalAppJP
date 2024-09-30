import 'package:flutter/material.dart';
import 'package:medappjp/src/product_detail.dart';

class ItemOfGrid extends StatelessWidget {
  final int priceOfProduct;
  final List<Widget> cartItems;
  const ItemOfGrid({Key? key, required this.priceOfProduct, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetails(
              priceOfProduct: priceOfProduct, cartItems:cartItems,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 147,
              width: 160,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 245, 245),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image(
                image: AssetImage("assets/proteinjar.png"),
              ),
            ),
            Text(
              "Protein Jar",
              style: TextStyle(fontSize: 14),
            ),
            Text("1kg"),
            SizedBox(
              height: 4,
            ),
            Text(
              "Rs.${priceOfProduct.toString()}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image(image: AssetImage("assets/rating_label.png"))],
            )
          ],
        ),
      ),
    );
  }
}
