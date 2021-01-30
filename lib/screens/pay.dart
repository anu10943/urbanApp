import 'package:flutter/material.dart';
import 'shopping/product_overview_screen.dart';
class Pay extends StatelessWidget {
  Pay();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Urban App',style: TextStyle( fontSize: 20,),)
      ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
                child: Text(
                  'Pay 20/- & Upgrade to Business Account ',
                  style: TextStyle(
                    fontSize: 20,
                    height: 2,
                    fontWeight: FontWeight.bold

                  ),
                  textAlign: TextAlign.center
                ),
              ),
          ),
          
          Container(
              height: 50,
              padding: EdgeInsets.all(10),
              width: 200,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(200)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ProductsOverviewScreen()));
                },
                child: Text(
                  'Pay',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
      

        ],
      ),
    );
  }
}
