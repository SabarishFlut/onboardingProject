// import 'package:flutter/material.dart';
// import 'package:flutter_screens/images/images.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class PlantFirstpage extends StatefulWidget {
//   const PlantFirstpage({Key? key}) : super(key: key);
//
//   @override
//   State<PlantFirstpage> createState() => _PlantFirstpageState();
// }
//
// class _PlantFirstpageState extends State<PlantFirstpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 810,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: NetworkImage("https://images.unsplash.com/photo-1542728928-ee495082a3c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTc4fHxwbGFudCUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"),fit: BoxFit.fill
//                 )
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';


class containerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Expandable Container Example')),
        body: ContainerList(),
      ),
    );
  }
}

class ContainerList extends StatefulWidget {
  @override
  _ContainerListState createState() => _ContainerListState();
}

class _ContainerListState extends State<ContainerList> {
  int selectedContainerIndex = -1;

  void handleContainerTap(int index) {
    setState(() {
      if (selectedContainerIndex == index) {
        selectedContainerIndex = -1; // Collapse if already expanded
      } else {
        selectedContainerIndex = index; // Expand if not expanded
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            handleContainerTap(index);
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            width: selectedContainerIndex == index ? 200 : 100,
            height: 100,
            color: Colors.green,
            child: Center(
              child: selectedContainerIndex == index
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.orange,
                      child: Text('1.Mood Motivation')),
                  SizedBox(height: 10),
                  Container(
                    width: 150,
                    height: 50,
                    color: Colors.red,
                    child: Center(child: Text('How motivated do you feel to work out today?')),
                  ),
                ],
              )
                  : Container(
                color: Colors.orange,
                    child: Text('1.Mood Motivation')),
            ),
          ),
        );
      }),
    );
  }
}

