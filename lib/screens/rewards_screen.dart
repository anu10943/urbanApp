import 'package:flutter/material.dart';
import 'package:urban_app/widgets/new_reward.dart';
import '../widgets/user_rewards.dart';
import '../widgets/new_reward.dart';
import '../models/reward.dart';
import '../widgets/reward_list.dart';
import '../widgets/reward_item.dart';
class Rewards extends StatefulWidget {
  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  final List<Reward> rewards = [
    Reward(id: 'r1', title: 'Solar', points: 200),
    Reward(id: 'r2', title: 'Rain Water Harvesting', points: 300),
    Reward(id: 'r3', title: 'Biogas', points: 100),
  ];

  void addNewRw(String title, String proof1, String proof2, String proof3) {
    final newRw =
        Reward(title: title, proof1: proof1, proof2: proof2, proof3: proof3);
    setState(() {
      rewards.add(newRw);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rewards'),
      ),
      body: Column(
        children: [ 
          
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            itemCount: rewards.length,
            itemBuilder: (ctx, i) => RewardItem(
                id: rewards[i].id,
                title: rewards[i].title,
                points: rewards[i].points),
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
                          context,
                          MaterialPageRoute(
                              builder: (_) => NewReward(addNewRw)));
                    },
                    child: Text(
                      'New Entry',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
          // SizedBox(
          //   height: 50,
          //   child: Center(child:Text('Total Points :'),),
          //   width: double.infinity,
            
          // ),
        ],
      ),
    );
  }
}
