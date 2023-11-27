import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedPref extends StatefulWidget {
  const sharedPref({Key? key}) : super(key: key);

  @override
  State<sharedPref> createState() => _sharedPrefState();
}
   int count = 0;
class _sharedPrefState extends State<sharedPref> {


  Future<void> _incrementCounter() async {
  if(count == 0){
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("counterstatus","Starting");
  }
    setState(() {
      count++;
    });
}
  Future<void> _decrementCounter() async {
    setState(() {
        count--;
    });
}
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Shared Prefrences")),),
      persistentFooterButtons: [
        FloatingActionButton(
          onPressed: (){
            _incrementCounter();
          },
          child: Icon(Icons.add),
        ),
        SizedBox(width: 246),
        FloatingActionButton(
          onPressed: (){
            _decrementCounter();
          },
          child: Icon(Icons.exposure_minus_1),
        ),
      ],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("The Value Increment Counter",style: TextStyle(fontSize: 20,color: Colors.grey.shade700)),
            Text("$count", style: TextStyle(fontSize: 50,color: Colors.grey.shade700),),
            ElevatedButton(
              onPressed: ()async{
              SharedPreferences preferences = await SharedPreferences.getInstance();
             String? status = preferences.getString("counterstatus");
             print("Status of sharedpreferences : $status");
            }, child: Text("Check"),)
          ],
        ),
      ),
    );
  }
}
