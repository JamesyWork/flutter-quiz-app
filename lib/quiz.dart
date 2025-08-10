import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// // Method 1
// class _QuizState extends State<Quiz> {
//   Widget? activeScreen;

//   @override
//   void initState() {
//     activeScreen = StartScreen(switchScreen);
//     super.initState();
//   }

//   switchScreen() {
//     setState(() {
//       activeScreen = const QuestionsScreen();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.deepPurple, Colors.deepPurpleAccent],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight
//             ),
//           ),
//           child: activeScreen,
//         ),
//       ),
//     );
//   }
// }

// // Method 2
class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'start-screen';

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}