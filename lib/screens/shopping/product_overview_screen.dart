import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../widgets/product_item.dart';

//ADD appbar to this
class ProductsOverviewScreen extends StatelessWidget {
  final String title;
  ProductsOverviewScreen({this.title});
  final List<Product> loadedProducts = [
    Product(
        id: 'p1',
        title: 'Tomatoes',
        description: 'Per kg',
        price: 100,
        imageUrl: 'assets/images/tomatoes.jpg',
        isFavourite: true),
    Product(
        id: 'p2',
        title: 'Potatoes',
        description: 'Per kg',
        price: 80,
        imageUrl: 'assets/images/potatoes.jpg',
        isFavourite: true),
    
    Product(
        id: 'p3',
        title: 'Brinjal',
        description: 'Per kg',
        price: 120,
        imageUrl: 'assets/images/brinjal.jpg',
        isFavourite: true),
    Product(
        id: 'p4',
        title: 'Ladies Finger',
        description: 'Per kg',
        price: 12,
        imageUrl: 'assets/images/ladiesfinger.jpg',
        isFavourite: false),
         
    Product(
        id: 'p5',
        title: 'Carrots',
        description: 'Per kg',
        price: 120,
        imageUrl: 'assets/images/carrots.jpg',
        isFavourite: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),

        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id,
            loadedProducts[i].title, loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10, //space b/w cols
          mainAxisSpacing: 10, //space b/w rows
        ), //tells how many cols
      ), //useful for grid with many items,render only item on screen
    );
  }
}
