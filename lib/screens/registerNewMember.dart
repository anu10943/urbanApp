import 'package:flutter/material.dart';
import 'package:urban_app/screens/pay.dart';
import '../widgets/form.dart';
import 'shopping/category_overview_screen.dart';
import './pay.dart';
import './tabs_screen.dart';

class RegisterNewMember extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: Center(
                child: Image.asset('assets/images/logo.jpg'),
              ),
            ),
            Column(
               children : [
                  RegLogForm(
                      label: 'Full Name',
                      hint: 'Enter name as specified in Aadhar card'),
                  RegLogForm(label: 'Aadhar Card No.', hint: ''),
                  RegLogForm(label: 'Ration Card No.', hint: ''),
                  RegLogForm(label: 'Address', hint: ''),
                ],
              ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
                              builder: (_) => TabsScreen()));
                    },
                    child: Text(
                      'Be a Member',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(200)),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Pay()));
                      },
                      child: Text(
                        'Upgrade Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 130,
            ),
            Text(
              'Already have an account? Login now',
              style: TextStyle(color: Theme.of(context).primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
