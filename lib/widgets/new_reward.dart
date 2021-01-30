import 'package:flutter/material.dart';
import '../screens/rewards_screen.dart';

class NewReward extends StatelessWidget {
  final titleController = TextEditingController();
  final proofController1 = TextEditingController();
  final proofController2 = TextEditingController();
  final proofController3 = TextEditingController();
  final Function addNewRw;
  NewReward(this.addNewRw);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply for New Reward'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Work done',
                icon: Icon(Icons.bookmark),
              ),
              controller: titleController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Proof1',
                icon: Icon(Icons.arrow_circle_down_outlined),
              ),
              controller: proofController1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Proof2',
                icon: Icon(Icons.arrow_circle_down_outlined),
              ),
              controller: proofController2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Proof3',
                icon: Icon(Icons.arrow_circle_down_outlined),
              ),
              controller: proofController3,
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(200)),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Rewards()));
              },
              child: Text(
                'Submit',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
