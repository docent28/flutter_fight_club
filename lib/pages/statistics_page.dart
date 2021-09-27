import 'package:flutter/material.dart';
import 'package:flutter_fight_club/pages/main_page.dart';
import 'package:flutter_fight_club/resources/fight_club_colors.dart';
import 'package:flutter_fight_club/widgets/secondary_action_button.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FightClubColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
              alignment: Alignment.center,
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: SecondaryActionButton(
                text: "Back",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
