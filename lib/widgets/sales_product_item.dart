import 'package:flutter/material.dart';
import './in_stock_button.dart';

class SalesProductItem extends StatelessWidget {
  final String title;
  final String id;
  final String description;
  final String imageUrl;
  final double price;
  final bool inStock;
  final bool isSold;

  SalesProductItem(
      {this.id,
      this.title,
      this.description,
      this.imageUrl,
      this.price,
      this.inStock,
      this.isSold});

  Color iconColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    if (isSold == true) {
      return Card(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        ListTile(
          leading: Image.asset(
            imageUrl,
            width: 150,
            height: 130,
            alignment: Alignment.center,
          ),
          title: Text('Title : $title'),
          subtitle: Text('Price : Rs. $price \nQty : $description'),
          contentPadding: EdgeInsets.all(10),
        ),
      ]));
    } else if (inStock != null) {
      iconColor = inStock ? Colors.green : Colors.red;
      return ListTile(
        leading: Container(
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.black, width: 2),
          ),
          child: Image.asset(
            imageUrl,
            width: 120,
            height: 100,
            alignment: Alignment.center,
          ),
        ),
        title: Text('Title : $title'),
        subtitle: Text('Price : Rs. $price \n$description'),
        contentPadding: EdgeInsets.all(10),
        trailing: InStockButton(iconColor),
      );
    } else {
      return Container(
        width: 0,
        height: 0,
      );
    }
  }
}
