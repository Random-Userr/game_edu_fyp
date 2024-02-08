import 'package:flutter/material.dart';
import 'package:game_edu_fyp/the_memory_match_game.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education App Dashboard'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: [
          SubjectCard(
            subject: 'Maths',
            gamesCount: 5,
            icon: Icons.calculate,
          ),
          SubjectCard(
            subject: 'Science',
            gamesCount: 3,
            icon: Icons.science,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TheMemoryMatchGame()),
              );
            },
          ),
          SubjectCard(
            subject: 'History',
            gamesCount: 4,
            icon: Icons.history,
          ),
          SubjectCard(
            subject: 'Geography',
            gamesCount: 2,
            icon: Icons.map,
          ),
          SubjectCard(
            subject: 'Language',
            gamesCount: 6,
            icon: Icons.language,
          ),
          SubjectCard(
            subject: 'General',
            gamesCount: 7,
            icon: Icons.school,
          ),
        ],
      ),
    );
  }
}

class SubjectCard extends StatelessWidget {
  final String subject;
  final int gamesCount;
  final IconData icon;
  final VoidCallback? onTap;

  const SubjectCard({
    required this.subject,
    required this.gamesCount,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
            ),
            SizedBox(height: 8.0),
            Text(
              subject,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              'Games: $gamesCount',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
