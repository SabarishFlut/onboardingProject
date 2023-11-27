import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screens/feature_widget/healthy_eating.dart';
import 'package:flutter_screens/feature_widget/live_fully.dart';
import 'package:flutter_screens/feature_widget/yogaforage.dart';
import 'package:flutter_screens/images/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ScreenUtilInit(builder: (context, child) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF0F0F1),
          // bottomNavigationBar: BottomNavigationBar(
          //   elevation: 60,
          //   items: [
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.handshake), label: 'Check in'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.graphic_eq), label: 'Progress'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.play_circle), label: 'Learn'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.star), label: 'Community'),
          //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Garry'),
          //   ],
          //   currentIndex: _selectedIndex,
          //   selectedItemColor: Colors.grey,
          //   selectedIconTheme: IconThemeData(color: Colors.black),
          //   unselectedIconTheme: IconThemeData(color: Colors.grey),
          //   onTap: (value) {
          //     setState(() {
          //       _selectedIndex = value;
          //     });
          //   },
          // ),
          body: Padding(
            padding: EdgeInsets.only(left: 16.0, top: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: SizedBox(
                      height: 38.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black54,
                          ),
                          fillColor: Colors.grey.shade300,
                          contentPadding: EdgeInsets.all(0.0),
                          hintText:
                              'Search by Programs, recipes, Diet, Classes...',
                          hintStyle: TextStyle(fontSize: 14.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),

                  Text(
                    'Featured >',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  SizedBox(
                    height: 140.0,
                    child: ListView.builder(
                      itemCount: images1.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => YogaforAge()),
                            );
                            //Navigator.pop(context);
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> YogaforAge()));
                          },
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(6.0),
                                //height: screenHeight * 70/100,
                                width: screenWidth * 80 / 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Container(
                                    child: Banner(
                                      message: "Series",
                                      textStyle: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                      location: BannerLocation.topStart,
                                      color: Colors.black87.withOpacity(0.2),
                                      child: Image.network(
                                        //'https://picsum.photos/250?image=9',
                                        images1[index],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.all(4.0),
                                width: screenWidth * 80 / 100,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 18.0),
                                    height: 20,
                                    width: screenWidth * 100 / 100,
                                    color: Colors.black.withOpacity(0.6),
                                    child: Center(
                                        child: Text(
                                      'YOGA FOR THE AGING DAY',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.all(4.0),
                                width: screenWidth * 80 / 100,
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    margin: EdgeInsets.all(8.0),
                                    padding: EdgeInsets.all(6.0),
                                    height: 20.0,
                                    child: Text(
                                      'ENROLL BY MAR30',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),

                              // Container(
                              //   margin : EdgeInsets.all(4.0),
                              //   width: screenWidth * 80 / 100,
                              //   child: Align(
                              //     alignment: Alignment.topLeft,
                              //     child: RotationTransition(
                              //       turns:AlwaysStoppedAnimation(-20 / 360),
                              //       child: Container(
                              //         margin: EdgeInsets.all(4.0),
                              //         padding: EdgeInsets.all(6.0),
                              //         height: 20,
                              //          color : Colors.red,
                              //         child: ClipRRect(
                              //           borderRadius: BorderRadius.circular(6.0),
                              //           // margin: EdgeInsets.all(4.0),
                              //           //padding: EdgeInsets.all(6.0),
                              //           //height: 20.0,
                              //           child: Container(
                              //             child: Text(
                              //               'Series',
                              //               style: TextStyle(
                              //                   fontSize: 10, color: Colors.white),
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  //All Program
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'All Programs',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      //SizedBox(width: 0.0),
                      SizedBox(width: screenWidth * 52 / 100),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => LiveFully()));
                          },
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              decoration: TextDecoration.underline,
                              height: 0.5,
                            ),
                            selectionColor: Colors.grey,
                          )),
                    ],
                  ),
                  // SizedBox(height: 2.0),
                  SizedBox(
                    height: 114.0,
                    child: ListView.builder(
                      itemCount: images2.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        log('Index is => $index');
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LiveFully()),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(4.0),
                                width: screenWidth * 40 / 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    //'https://picsum.photos/250?image=9',
                                    images2[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              if (index == 1 || index == "" || index == 7)
                                Container(
                                  margin: EdgeInsets.all(4.0),
                                  width: screenWidth * 40 / 100,
                                  //color: Colors.blue.withOpacity(0.4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    color: Colors.blue.withOpacity(0.4),
                                  ),
                                ),
                              if (index == 3)
                                Container(
                                  margin: EdgeInsets.all(4.0),
                                  width: screenWidth * 40 / 100,
                                  //color: Colors.blue.withOpacity(0.4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    color: Colors.green.withOpacity(0.4),
                                  ),
                                ),
                              GestureDetector(
                                child: Container(
                                  margin: EdgeInsets.all(4.0),
                                  width: screenWidth * 40 / 100,
                                  // color: Colors.blue.withOpacity(0.4),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(4.0),
                                      ),
                                      margin: EdgeInsets.only(
                                          bottom: 12.0, left: 10.0),
                                      padding: EdgeInsets.all(4.0),
                                      height: 16.0,
                                      child: Text(
                                        'Living Fully',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                      builder: (context) => LiveFully()));
                                },
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  //Nutrition
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Nutrition and tips',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      //SizedBox(width: 0.0),
                      SizedBox(width: screenWidth * 46 / 100),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(0.0),
                          ),
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              decoration: TextDecoration.underline,
                            ),
                            selectionColor: Colors.grey,
                          )),
                    ],
                  ),
                  // SizedBox(height: 2.0),
                  SizedBox(
                    height: 114.0,
                    child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => HealthyWidget()));
                          },
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(4.0),
                                width: screenWidth * 40 / 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    //'https://picsum.photos/250?image=9',
                                    images[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(4.0),
                                width: screenWidth * 40 / 100,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 12.0),
                                    height: 20,
                                    width: screenWidth * 40 / 100,
                                    color: Colors.black.withOpacity(0.6),
                                    child: Center(
                                        child: Text(
                                      'Healthy Eating',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  //Patient
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Videos & Extras ',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      //SizedBox(width: 0.0),
                      SizedBox(width: screenWidth * 48 / 100),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              decoration: TextDecoration.underline,
                            ),
                            selectionColor: Colors.grey,
                          )),
                    ],
                  ),
                  // SizedBox(height: 2.0),
                  SizedBox(
                    height: 114.0,
                    child: ListView.builder(
                      itemCount: images3.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(4.0),
                                width: screenWidth * 40 / 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    //'https://picsum.photos/250?image=9',
                                    images3[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(4.0),
                                width: screenWidth * 40 / 100,
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white54,
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    height: 30,
                                    width: 30,
                                    child: Icon(Icons.play_circle_outline),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

bool oddOrEven(int a) {
  if (a % 2 != 0) {
    log('A value is => $a - True');

    return true;
  } else {
    log('A value is => $a - False');

    return false;
  }
}
