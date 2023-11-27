import 'package:flutter/material.dart';

Alignment StartAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

class DiceAppOne extends StatefulWidget {
   DiceAppOne(this.color1,this.color2,{Key? key}) : super(key: key);
   DiceAppOne.purple({super.key}):color1 = Colors.deepPurple,color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  State<DiceAppOne> createState() => _DiceAppOneState();
}

class _DiceAppOneState extends State<DiceAppOne> {
  var activeImage = 'https://clipart-library.com/images/qcBoGz5bi.png';
      //'https://img.favpng.com/20/0/15/dice-free-content-clip-art-png-favpng-0px3xhdm2KLrbUJT808gsjXfF_t.jpg';


  void rollDice(){
    setState(() {
      activeImage = "https://clipart-library.com/images/ki8oBodkT.png";
      //"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMQzBP69n7TxeowaN9dls0kTC3LaRUWs2L1Q&usqp=CAU";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1,widget.color2],
           begin: StartAlignment,
           end: endAlignment
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10,height: 10,),
            Image.network(activeImage,width: 200,),
            TextButton(
                onPressed: (){
              rollDice;
            },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 28)
                ),
                child: Text("RollDice")
            )
          ],
        ),
      ),
    );
  }
}
