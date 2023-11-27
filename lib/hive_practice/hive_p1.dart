import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Hive.initFlutter;
 await Hive.openBox("Shoping_box");
}

class hivePractice extends StatelessWidget {
   hivePractice({Key? key}) : super(key: key);

  @override
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _qantityController = TextEditingController();
  List<Map<String, dynamic>>  _items = [] ;
  final _shopingBox = Hive.box("Shoping_box");

  Future<void> _createItem(Map<String,dynamic> newItem)async {
    await _shopingBox.add(newItem);// 0,1,2... are the positions can store the data when using add method
    print("Amount Data is ${_shopingBox.length}");
   }

  void _showForm (BuildContext ctx , int? itemKey)async{
    showModalBottomSheet(
        context: ctx,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom,top: 15,left: 15,right: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: "Name"),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: _qantityController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Quantity"),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    _nameController.text = " ";
                    _qantityController.text = " ";
                    Navigator.of(ctx).pop();
                  },
                  child: Text("Create New")
              )
            ],
          ),
        )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showForm(context, null);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
