import 'package:flutter/material.dart';
import 'package:flutter_screens/sharedpref/login_logout_prac.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginLogic extends StatefulWidget {
  const loginLogic({Key? key}) : super(key: key);

  @override
  State<loginLogic> createState() => _loginLogicState();
}
  int count = 0;

  bool switchvalue = false;

  var textcontroller = TextEditingController();

  late SharedPreferences pref;

class _loginLogicState extends State<loginLogic> {

  initShared()async{
     pref = await SharedPreferences.getInstance();
     print("${pref.get("Value")}**24");
     print("${pref.get("Text")}**25");
     print("${pref.get("Bool")}**26");
     saveValue();
  }
  saveValue(){
    count = pref.getInt("Value")!;
    textcontroller.text = pref.getString("Text")!;
    switchvalue = pref.getBool("Bool")!;
    setState(() {

    });
  }//saved value after restarting from sharedprefrences

  @override
  void initState(){
    super.initState();
    initShared();
  }

  Future<void> _incrementCounter() async {
    setState(() {
      count++;
    });
    pref.setInt("Value",count);
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Shared Prefrences")),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _incrementCounter();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The Value Increment Counter",style: TextStyle(fontSize: 20,color: Colors.grey.shade700)),
            Text("$count", style: TextStyle(fontSize: 50,color: Colors.grey.shade700),),
            TextFormField(
              controller: textcontroller,
              onChanged: (entertext)async{
                await pref.setString("Text", entertext);
              },
            ),
            SwitchListTile(
              title: Text("Save User"),
                value: switchvalue,
                onChanged: (toggle)async{
                pref.setBool("Bool", toggle);
              setState(() {
                switchvalue = toggle;
              });
            }
            ),
          ],
        ),
      ),
    );
  }
}
