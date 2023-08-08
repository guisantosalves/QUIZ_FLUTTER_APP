import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // centralize everything in my screen, and occupy all the screen
      child: Column(
        mainAxisSize: MainAxisSize.min, // to occupy the min size in vertically
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
                color: Color.fromARGB(255, 237, 223, 252), fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('start quiz'))
        ],
      ),
    );
  }
}
