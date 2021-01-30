import 'package:flutter/material.dart';
import '../screens/rewards_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 22,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => Rewards()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              'More',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Rewards', Icons.card_giftcard, context),
          // buildListTile('Waste', Icons.delete, context)
        ],
      ),
    );
  }
}
