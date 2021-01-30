import 'package:flutter/material.dart';
import 'package:urban_app/models/product.dart';
import 'package:urban_app/widgets/sales_product_item.dart';

class SoldProducts extends StatelessWidget {
  final List<Product> products = [
    Product(
        id: 's1',
        title: 'Potatoes',
        description: '2 kg',
        price: 80,
        imageUrl:'assets/images/potatoes.jpg',
         isSold: true),
    Product(
        id: 's2',
        title: 'Oranges',
        description: '1 kg',
        price: 80,
        imageUrl:'assets/images/oranges.jpg',
                isSold: false),
    Product(
        id: 's3',
        title: 'Carrots',
        description: '3 kg',
        price: 120,
        imageUrl:'assets/images/carrots.jpg',
         isSold: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sold products'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: products.length,
          itemBuilder: (ctx, i) => SalesProductItem(
                  id: products[i].id,
                  title: products[i].title,
                  description:products[i].description,
                  imageUrl: products[i].imageUrl,
                  price: products[i].price,
                  isSold: products[i].isSold,
                )
               
                   
                ), //useful for list with many items,render only item on screen
    );
  }
}
