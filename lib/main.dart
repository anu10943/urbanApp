import 'package:flutter/material.dart';
import 'package:urban_app/screens/registerNewMember.dart';
import 'screens/shopping/product_overview_screen.dart';
import './screens/login.dart';
import './screens/registerNewMember.dart';
import 'screens/shopping/product_detail_screen.dart';
import 'screens/sales/sales_category.dart';
import 'screens/sales/product_list.dart';
import './screens/tabs_screen.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'UrbanApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.purple,
        accentColor: Colors.orange,
        fontFamily: 'Lato'
      ),
      // home: ProductsOverviewScreen() ,
      home:RegisterNewMember(),
      // home: TabsScreen(),
      routes:{
        ProductDetailScreen.routeName:(ctx)=>ProductDetailScreen(),
         
       },
      
    );
  }
}
 