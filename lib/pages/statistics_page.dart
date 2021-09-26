import 'package:flutter/material.dart';
import 'package:flutter_fight_club/resources/fight_club_colors.dart';
import 'package:flutter_fight_club/widgets/secondary_action_button.dart';

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
        child: Column(
          children: [
            const SizedBox(height: 24),
            Container(

            ),
            Center(
              child: Text(
                "Statistics",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: FightClubColors.darkGreyText,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            SecondaryActionButton(
              text: "Back",
              onTap: () {
                print("On Secondary");
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
