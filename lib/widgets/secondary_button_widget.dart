import 'package:flutter/cupertino.dart';
import 'package:flutter_fight_club/resources/fight_club_colors.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const SecondaryButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: FightClubColors.darkGreyText,
            width: 2,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: FightClubColors.darkGreyText,
          ),
        ),
      ),
    );
  }
}
