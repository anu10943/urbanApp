import 'package:flutter/material.dart';
import 'package:urban_app/models/category.dart';
import '../../models/category.dart';
import '../../widgets/category_item.dart';

//ADD appbar to this
class CategoryOverviewScreen extends StatelessWidget {
  final List<Category> loadedCategories = [
    Category(
        id: 'p1',
        title: 'Vegetables',
        imageUrl: 'assets/images/vegetables.jpg'),
    Category(id: 'p2', title: 'Fruits', imageUrl: 'assets/images/fruits.jpg'),
    Category(id: 'p3', title: 'Cakes', imageUrl: 'assets/images/cakes.jpg'),
    Category(id: 'p4', title: 'Clothes', imageUrl: 'assets/images/clothes.jpg',),
    Category(
      id: 'p5',
      title: 'Handicrafts',
      imageUrl: 'assets/images/handicrafts.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),

      itemCount: loadedCategories.length,
      itemBuilder: (ctx, i) => CategoryItem(
          id: loadedCategories[i].id,
          title: loadedCategories[i].title,
          imageUrl: loadedCategories[i].imageUrl),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10, //space b/w cols
        mainAxisSpacing: 10, //space b/w rows
      ), //tells how many cols
      //useful for grid with many items,render only item on screen
    );
  }
}
