import 'package:flutter/material.dart';
import 'package:flutter_fight_club/resources/fight_club_colors.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MainStatisticsPage();
  }
}

class _MainStatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FightClubColors.background,
      body: SafeArea(
        child: Text("Statistics"),
      ),
    );
  }
}
