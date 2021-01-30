 
import 'package:flutter/material.dart';
import '../screens/shopping/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  ProductItem(this.id, this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,arguments:title);          },
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
           
          backgroundColor: Colors.black54,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          
        ),
      ),
    );
  }
}


//material pageroute=created on the fly, as app gets bigger, then multiple on the fly routes, hard to understqand for new developer
//pass an arg that is not needed in next widget but is accessed in another widget thorugh current widget
//so we have to create named route