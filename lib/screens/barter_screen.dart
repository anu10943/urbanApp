import 'package:flutter/material.dart';
import '../models/product.dart';

class Barter extends StatelessWidget {
  final List<Product> barterProducts = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                 child: Text("Your product is Oranges\nPrice : 100 Per Kg\nTotal Price : 400",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
              ),
            ),
            ListTile(
              leading:
                Container(
                  decoration: BoxDecoration( borderRadius: BorderRadius.circular(200),),
                    child: Image.asset('assets/images/lemons.jpg'),
                     ),
                title: Text ('Price : 200 Per kg'),
                subtitle: Text('Total Price : 400'),
                      

                trailing:Container(
                  width: 110,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(200)),
                  child: FlatButton(
                      onPressed: () {
                      
                      },
                      child: Text(
                        'Request For Exchange',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )),
                ),
            

            )]
                 
        
      ),
    );
  }
}
