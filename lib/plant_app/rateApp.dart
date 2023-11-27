import 'package:flutter/material.dart';

class RateName extends StatefulWidget {
  const RateName({Key? key}) : super(key: key);

  @override
  State<RateName> createState() => _RateNameState();
}

class _RateNameState extends State<RateName> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("TestApp"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            buildContainer(color: Colors.red),
            SizedBox(height: 15,),
            buildContainer(color: Colors.blue),
            SizedBox(height: 15,),
            buildContainer(color: Colors.green),
            SizedBox(height: 15,),
            buildContainer(color: Colors.yellow),
            SizedBox(height: 15,),
            buildContainer(color: Colors.purple),
            SizedBox(height: 15,),
            buildContainer(color: Colors.grey),
            SizedBox(height: 15,),
            buildContainer(color: Colors.orangeAccent),
            SizedBox(height: 15,),
            buildContainer(color: Colors.blue),
            SizedBox(height: 15,),
            buildContainer(color: Colors.green),
            SizedBox(height: 15,),
            buildContainer(color: Colors.red),
            SizedBox(height: 15,),
            buildContainer(color: Colors.limeAccent),
          ],
        ),
      ),
    );
  }

  Container buildContainer({required Color color}) {
    return Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20)
          ),
        );
  }
}
