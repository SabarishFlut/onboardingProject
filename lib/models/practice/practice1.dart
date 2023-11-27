import 'package:flutter/material.dart';

class Practice1 extends StatelessWidget {
  const Practice1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white54,
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.black87,),onPressed: (){},),
          title: Text("Programs",style: TextStyle(color: Colors.black),),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Container(
              height: 40,
              color: Colors.red,
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  Tab(
                    child: SizedBox(
                      height: 40,
                      width: 80,
                      child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                              shape: StadiumBorder(),
                            ),
                            onPressed: (){},
                            child: Text("All"),
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Tab(
                    child: SizedBox(
                      height: 40,
                      width: 80,
                      child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                              shape: StadiumBorder(),
                            ),
                            onPressed: (){},
                            child: Text("All"),
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Tab(
                    child: SizedBox(
                      height: 40,
                      width: 80,
                      child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                              shape: StadiumBorder(),
                            ),
                            onPressed: (){},
                            child: Text("All"),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
        ),

      ),
    );
  }
}
