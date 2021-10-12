import 'package:flutter/painting.dart';

class FightResult {
  final String result;
  final Color color;

  const FightResult._(this.result, this.color);

  static const won = FightResult._("Won");
  static const lost = FightResult._("Lost");
  static const draw = FightResult._("Draw");

  static const values = [won, lost, draw];

  static FightResult getByName(final String name){
return values.firstWhere((fightResult) => fightResult.result==name);
  }

  static FightResult? calculateResult(
      final int yourLives, final int enemysLives) {
    if (yourLives == 0 && enemysLives == 0) {
      return draw;
    } else if (yourLives == 0) {
      return lost;
    } else if (enemysLives == 0) {
      return won;
    }
    return null;
  }

  @override
  String toString() {
    return 'FightResult{result: $result}';
  }
}
