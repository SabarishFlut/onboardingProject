import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
    DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownvalue = 'chocolate';
 String dropdownvalue1 = 'items1';
 String dropdownvalue2 = 'items a';
  var items =[
    'chocolate',
    'icecream cake',
    'korean dish',
    'local foods',
  ];
  var list1 =[
    'items1',
    'items2',
    'items3',
    'items4',
  ];
  var list2 =[
    'items a',
    'items b',
    'items c',
    'items d',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButton(
                  // onTap: () {
                  //   showDialog(context: context, builder: (context) => Container());
                  // },
                  dropdownColor: Colors.orangeAccent,
                  value: dropdownvalue,
                  items: items.map((valueItem){
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem,style: TextStyle(fontSize: 20),),
                    );
                  }).toList(),
                  onChanged: (String? newValue){
                    setState(() {
                       dropdownvalue = newValue!;
                    });
                    print("${dropdownvalue}**46");
                    print("${newValue}**47");
                  },
                  // hint: Text("Items"),
                  //   items: items.map((String items){
                  //     return DropdownMenuItem(
                  //         value: items,
                  //       child: Text(items),
                  //       );
                  //     }
                  //   ).toList(),
                  // onChanged: (String? newValue) {
                  //   setState(() {
                  //      dropdownvalue = newValue!;
                  //   });
                  // },
                ),
                SizedBox(height: 10,),
                DropdownButtonHideUnderline(
                    child: DropdownButton(
                      dropdownColor: Colors.orangeAccent,
                      value: dropdownvalue1,
                      items: list1.map((valueItem){
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem,style: TextStyle(fontSize: 20),),
                        );
                      }).toList(),
                      onChanged: (String? newValue){
                        setState(() {
                          dropdownvalue1 = newValue!;
                        });
                        print("${dropdownvalue1}**46");
                        print("${newValue}**47");
                      },
                    ),
                ),
                SizedBox(height: 10,),
                DropdownButtonFormField(
                  value: dropdownvalue2,
                    items: list2.map((valueItem){
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem,style: TextStyle(fontSize: 20),),
                      );
                    }).toList(),
                    onChanged: (String? newValue){
                      setState(() {
                        dropdownvalue2 = newValue!;
                      });
                      print("${dropdownvalue2}**46");
                      print("${newValue}**47");
                    },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
