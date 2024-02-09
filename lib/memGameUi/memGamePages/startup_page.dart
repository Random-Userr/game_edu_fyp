import 'package:flutter/material.dart';

import 'package:game_edu_fyp/MemGameUi/MemGameWidgets/game_options.dart';
import 'package:game_edu_fyp/MemGameUtils/constants.dart';

class StartUpPage extends StatelessWidget {
  const StartUpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  gameTitle,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                GameOptions(),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showGameDescription(context),
        child: Icon(Icons.help),
      ),
    );
  }

  void _showGameDescription(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Memory Flip Card Game"),
          content: Text(
              "The Memory Flip Card Game is a classic concentration game where players need to match pairs of cards by flipping them over. It's a great way to improve memory, focus, and cognitive skills."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }
}
