import 'package:flutter/material.dart';
import './shopping/category_overview_screen.dart';
import './sales/sales_category.dart';
import './barter_screen.dart';
import 'rewards_screen.dart';
import '../widgets/main_drawer.dart';
class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 3,
      initialIndex:0,

      child: Scaffold(
        appBar: AppBar( 
          title: Text('UrbanApp'),
   
          bottom: TabBar(tabs: [
            Tab(text: 'Shopping'),
            Tab(text: 'Sales'),
            Tab(text: 'Barter'),
         
            
             
          ]),
        ),
        drawer:MainDrawer(),
        body:TabBarView(
          children: [
            CategoryOverviewScreen(),
            SalesCategory(),
            Barter(),
            
          ],

        )
      ),
    );
  }
}
