import 'package:flutter/material.dart';

class ItemOfGrid extends StatelessWidget {
  const ItemOfGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 147,
            width: 158,
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
            "Rs:1200",
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
    );
  }
}
