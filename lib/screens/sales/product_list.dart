import 'package:flutter/material.dart';
import 'package:urban_app/models/product.dart';
import 'package:urban_app/widgets/sales_product_item.dart';
class ProductList extends StatelessWidget {
  final List<Product> salesProducts = [
    Product(
        id: 'p1',
        title: 'Tomatoes',
        description: 'Per kg',
        price: 100,
        imageUrl: 'assets/images/tomatoes.jpg',
        inStock: true),
    Product(
        id: 'p2',
        title: 'Oranges',
        description: 'Per kg',
        price: 80,
        imageUrl: 'assets/images/oranges.jpg',
        inStock: true),
    
    Product(
        id: 'p3',
        title: 'Brinjal',
        description: 'Per kg',
        price: 120,
        imageUrl: 'assets/images/brinjal.jpg',
        inStock: true),
    Product(
        id: 'p4',
        title: 'Lemons',
        description: 'Per kg',
        price: 12,
        imageUrl: 'assets/images/lemons.jpg',
        inStock: false),
         
    Product(
        id: 'p5',
        title: 'Carrots',
        description: 'Per kg',
        price: 120,
        imageUrl: 'assets/images/carrots.jpg',
        inStock: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Products'),
      ),
      body:  
          ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: salesProducts.length,
            itemBuilder: (ctx, i) => SalesProductItem(
              id: salesProducts[i].id,
              title: salesProducts[i].title,
              description: salesProducts[i].description,
              imageUrl: salesProducts[i].imageUrl,
              price: salesProducts[i].price,
              inStock: salesProducts[i].inStock,
            ),
            
             
           ),
           
        
       //useful for list with many items,render only item on screen
    );
  }
}
