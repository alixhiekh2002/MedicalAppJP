import 'package:flutter/material.dart';

class ListingProducts extends StatefulWidget {
  final int newPrice;
  final int capacity;
  final String price;
  final Function()? onDelete;
  final Function()? onPriceAdd;
  final Function()? onDeleteCapacity;
  const ListingProducts({
    Key? key,
    this.onDelete,
    this.onPriceAdd,
    required this.newPrice,
    required this.capacity,
    required this.price,
    this.onDeleteCapacity,
  }) : super(key: key);

  @override
  State<ListingProducts> createState() => _ListingProductsState();
}

class _ListingProductsState extends State<ListingProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 82,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            child: Image(image: AssetImage("assets/proteinjar.png")),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Protein Jar",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                widget.newPrice.toString(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              GestureDetector(
                onTap: widget.onDelete,
                child: Icon(
                  Icons.delete,
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xffF2f4ff),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: widget.onPriceAdd,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffDFE3FF),
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.capacity.toString()),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: widget.onDeleteCapacity,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffDFE3FF)),
                        child: Icon(Icons.minimize_rounded),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
