import 'package:flutter/material.dart';
import 'package:game_edu_fyp/MemGameUi/MemGameWidgets/game_options.dart';
import 'package:game_edu_fyp/MemGameUi/MemGameWidgets/web/game_board.dart';
import 'package:game_edu_fyp/MemGameUi/MemGameWidgets/mobile/game_board_mobile.dart';

import '../../main.dart';

class MemoryMatchPage extends StatelessWidget {
  const MemoryMatchPage({
    required this.gameLevel,
    super.key,
  });

  final int gameLevel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memory Match Game'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        GameOptions())); // Navigate back to the previous page
          },
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: ((context, constraints) {
            if (constraints.maxWidth > 720) {
              return GameBoard(
                gameLevel: gameLevel,
              );
            } else {
              return GameBoardMobile(
                gameLevel: gameLevel,
              );
            }
          }),
        ),
      ),
    );
  }
}
