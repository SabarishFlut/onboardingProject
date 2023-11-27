import 'package:flutter/material.dart';

// class StartScreen extends StatefulWidget {
//   const StartScreen({Key? key}) : super(key: key);
//
//
//   @override
//   State<StartScreen> createState() => _StartScreenState();
// }
//
// class _StartScreenState extends State<StartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.topLeft,end: Alignment.bottomRight,
//                   colors: [
//                 Colors.purple,
//                 Colors.deepPurpleAccent
//               ])
//           ),
//           child: StartOne(() { }),
//         )
//     );
//   }
// }

class StartOne extends StatelessWidget {
   StartOne(this.startQuiz,{Key? key}) : super(key: key);

   final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Let's learn flutter",style: TextStyle(color: Colors.white,fontSize: 26),),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
              icon: Icon(Icons.arrow_right_alt),
              label: Text("Start Quiz")
          )
        ],
      ),
    );
  }
}

