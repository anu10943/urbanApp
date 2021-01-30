import 'package:flutter/material.dart';

class RewardItem extends StatelessWidget {
  final String title;
  final String id;

  final double points;

  RewardItem({
    this.id,
    this.title,
    this.points,
  });

  @override
  Widget build(BuildContext context) {
    
      return ListTile(
          leading: Icon(Icons.add),
          
          title: Text('$title'),
          trailing: Text('$points'),
          contentPadding: EdgeInsets.all(10),
        );
      
    
    
  }
}
