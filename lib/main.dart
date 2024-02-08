import 'package:flutter/material.dart';
import 'dart:math';

import 'package:game_edu_fyp/Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NextPage(),
    );
  }
}

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6D2F9E), // Background color hex code
      body: Stack(
        children: [
          _buildBackgroundCircles(
              MediaQuery.of(context).size), // Background circles
          Positioned(
            left: 10.0,
            top: 30.0,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome User',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                CircleAvatar(
                  backgroundColor: Colors.yellow, // Placeholder color
                  radius: 60.0,
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
                SizedBox(height: 40.0),
                _buildButton(
                    'Play Games', Color(0xFFFFFFFF), Color(0xFF6D2F9E)),
                SizedBox(height: 20.0),
                _buildButton(
                    'Leaderboard', Color(0xFFFFFFFF), Color(0xFF6D2F9E)),
                SizedBox(height: 20.0),
                _buildButton('Stories', Color(0xFFFFFFFF), Color(0xFF6D2F9E)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, Color bgColor, Color textColor) {
    return ElevatedButton(
      onPressed: () {
        // Add functionality for the button
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Dashboard()));
      },
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundCircles(Size size) {
    return Stack(
      children: List.generate(
        4,
        (_) {
          final random = Random();
          final left = random.nextDouble() * size.width;
          final top = random.nextDouble() * size.height;

          return Positioned(
            left: left,
            top: top,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(210, 132, 237, 0.36),
              ),
            ),
          );
        },
      ),
    );
  }
}
