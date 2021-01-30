import 'package:flutter/material.dart';
import '../models/reward.dart';
import './reward_item.dart';
class RewardList extends StatelessWidget {
  final List<Reward> _rewards;
  RewardList(this._rewards);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: _rewards.length,
        itemBuilder: (ctx, i) => RewardItem( 
            id: _rewards[i].id,
            title: _rewards[i].title,
            points: _rewards[i].points),
      
    );
  }
}
