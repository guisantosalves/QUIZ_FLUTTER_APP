import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  // passing a function to child
  // using this to set directally to the property
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //     opacity: 0.4,
          //     child: Image.asset(
          //       'assets/images/quiz-logo.png',
          //       width: 300,
          //     ))
          const SizedBox(height: 80),
          Text(
            'Learn flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('start quiz'))
        ],
      ),
    );
  }
}
