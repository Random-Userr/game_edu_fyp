import 'package:flutter/material.dart';
import 'package:game_edu_fyp/Dashboard.dart';
import 'package:game_edu_fyp/main.dart';
import 'package:game_edu_fyp/memGameUi/memGamePages/memory_match_page.dart';
import 'package:game_edu_fyp/memGameUi/MemGameWidgets/game_button.dart';
import 'package:game_edu_fyp/MemGameUtils/constants.dart';

class GameOptions extends StatelessWidget {
  const GameOptions({
    Key? key,
  }) : super(key: key);

  static Route<dynamic> _routeBuilder(BuildContext context, int gameLevel) {
    return MaterialPageRoute(
      builder: (_) {
        return MemoryMatchPage(gameLevel: gameLevel);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...gameLevels.map((level) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GameButton(
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                  _routeBuilder(context, level['level']),
                  (Route<dynamic> route) => false),
              title: level['title'],
              color: level['color']![700]!,
              width: 250,
            ),
          );
        }).toList(),
        const SizedBox(height: 20),
        GameButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Dashboard())),
          title: 'Back',
          color: restartButtonColor,
          width: 200,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
