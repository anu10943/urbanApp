import 'package:flutter/foundation.dart';

class Reward {
  final String id;
  final String title;
  final double points;
  final String proof1;
  final String proof2;
  final String proof3;

  Reward(
      { this.id,
      @required this.title,
      this.points,
      this.proof1,
      this.proof2,
      this.proof3});
}
