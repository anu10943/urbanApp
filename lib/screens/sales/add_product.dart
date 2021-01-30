import 'package:flutter/material.dart';
import 'package:urban_app/widgets/form.dart';
import './product_list.dart';

class AddProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product'),),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20,30,20,20),
        child:Column(children: [
           RegLogForm(
                      label: 'Product Name',//how do u effing take user input
                      hint: ''),
                  RegLogForm(label: 'Product Description', hint: ''),
                  // RegLogForm(label: 'Photo', hint: ''),

                  RegLogForm(label: 'Price', hint: ''),
                  RegLogForm(label: 'Category', hint: ''),

                  RegLogForm(label: 'Product WishList for barter', hint: ''),
                  Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(200)),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductList()));
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16, ),
                    ),
                  ),
                ),
        ],)
      ),
    );
  }
}