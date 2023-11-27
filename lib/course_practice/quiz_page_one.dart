// import 'package:flutter/material.dart';
// import 'package:flutter_screens/course_practice/question_screen.dart';
// import 'package:flutter_screens/course_practice/quiz_app.dart';
// import 'question_screen.dart';
//
// class QuizPageOne extends StatefulWidget {
//   const QuizPageOne({Key? key}) : super(key: key);
//
//   @override
//   State<QuizPageOne> createState() => _QuizPageOneState();
// }
//
// class _QuizPageOneState extends State<QuizPageOne> {
//   var  activeScreen = "Start Screen" ;
//   @override
//   // void initState() {
//   //   activeScreen = StartOne(switchScreen);
//   //   super.initState();
//   // }
//   void switchScreen(){
//     setState(() {
//       activeScreen = "Question Screen";
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.topLeft,end: Alignment.bottomRight,
//                   colors: [
//                 Colors.purple,
//                 Color(0xff86CBFF)
//               ])
//           ),
//           child: activeScreen == "Start Screen" ? StartOne(switchScreen): QuestionScreen(),
//         )
//     );
//   }
// }

import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,end: Alignment.bottomRight,
                  colors: [
                    Colors.purple,
                    Colors.deepPurpleAccent
                  ])
          ),
          // child: ,
        )
    );
  }
}

