import 'package:flutter/foundation.dart';
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavourite;
  bool inStock;
  bool isSold;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      this.imageUrl,
      this.isFavourite,
      this.inStock,
      this.isSold});
      
}
