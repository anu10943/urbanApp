import 'package:flutter/material.dart';
import '../../models/category.dart';
import './product_list.dart';
import './sales_requests.dart';
import './sold_products.dart';
import './add_product.dart';

class SalesCategory extends StatelessWidget {
  final List<Category> salesCategories = [
    Category(id: 'c1', title: 'Sales Requests'),
    Category(id: 'c2', title: 'Product List'),
    Category(id: 'c3', title: 'Sold Products'),
    Category(id: 'c4', title: 'Add New Product'),
  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text('${salesCategories[index].title}'),
              hoverColor: Theme.of(context).accentColor,
              leading: IconButton(
                icon: Icon(Icons.bookmark),
                onPressed: null,
                color: Theme.of(context).accentColor,
              ),
              focusColor: Theme.of(context).primaryColor,
              contentPadding: EdgeInsets.all(10),
              onTap: () {
                if (salesCategories[index].id == 'c1') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SalesRequests()));
                } else if (salesCategories[index].id == 'c2') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ProductList()));
                } else if (salesCategories[index].id == 'c3') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SoldProducts()));
                } else if (salesCategories[index].id == 'c4') {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AddProduct()));
                }
              },
            );
          },
          itemCount: salesCategories.length,
        );
  }
}
