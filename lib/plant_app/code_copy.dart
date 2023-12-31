import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/newCheck_in/customPaint.dart';
import 'package:flutter_screens/newCheck_in/utiltext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';

//Main Code without change
/*class SecondCheckin extends StatefulWidget {
  const SecondCheckin({Key? key}) : super(key: key);

  @override
  State<SecondCheckin> createState() => _SecondCheckinState();
}

class _SecondCheckinState extends State<SecondCheckin>
    with SingleTickerProviderStateMixin {
  // late Animation<double> animation;
  // late AnimationController animController;
  DateTime dateone = DateTime.now();
  DateTime datetwo = DateTime.now();
  DateTime datethree = DateTime.now();
  String? formatter;

  String? formatterone;
  String? formattertwo;
  String? formatterthree;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   animController = AnimationController(vsync: this,duration: Duration(seconds: 1));
  //   final curvedAnimation = CurvedAnimation(parent: animController, curve: Curves.easeInCubic);
  //   animation = Tween<double>(begin :0.0,end :3.14).animate(curvedAnimation)..addListener((){
  //     setState(() {
  //
  //     });
  //   });
  //   animController.repeat(reverse: false);
  // }
  //
  // @override
  // void dispose() {
  //   animController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    if (formatter == null) {
      formatter = DateFormat('MMM dd').format(dateone);
    }
    if (formattertwo == null) {
      datetwo = datetwo.subtract(Duration(days: 5));
      formattertwo = DateFormat('MMM dd').format(datetwo);
    }
    if (formatterthree == null) {
      formatterthree = DateFormat('MMM dd').format(datethree);
    }
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return _mCheckInTwo();
    });
  }

  _mCheckInTwo() {
    int _selectedIndex = 0;
    DateTime date = DateTime.now();
    String currentdate = DateFormat.d().format(date);
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    var type = int.parse(currentdate);
    bool visible = true;
    double valuePer = 70;
    //
    // _updateDate(int dayAdd){
    //   setState(() {
    //     date = date.add(Duration(days: dayAdd));
    //   });
    //   print()
    // }
    // _updateDate() {
    //   DateTime date = DateTime.now();
    //   int total = date.day;
    //   int i = 1;
    //   for(int a = total; a >= 5 ;a--){
    //     updatedDate = a;
    //     print("${updatedDate}**40");
    //     print("${a}**39");
    //   }
    //   setState(() {
    //
    //   });
    //   // for(int a=today;a>=10;a--){
    //   //   int total = a-i;
    //   //   print("${total}**40");
    //   //   return  Text(
    //   //     "Today,${formatter} ${total}",
    //   //     style: TextStyle(
    //   //         color: Colors.white,
    //   //         fontWeight: FontWeight.w600,
    //   //         fontSize: 16.sp),
    //   //   );
    //   // }
    //   //print("${_updateDate().toString()}**41");
    //   // if(date.day <= type){
    //   //   print("${type}**35");
    //   //     int i =1;
    //   //     DateTime date = DateTime.now();
    //   //     int today = date.day;
    //   //     for(int a=today;a<=today;a++){
    //   //       int total = a-i;
    //   //       print(total);
    //   //     }
    //   // }
    //   // setState(() {
    //   //   date = date.add(Duration(days: daysToAdd));
    //   //   formatter = DateFormat.MMM().format(date);
    //   //   formattedDate = DateFormat('yyyy-MM-dd').format(date);
    //   // });
    // }
    //print("${updatedDate}**74");

    loadProgress() {
      if (visible == true) {
        setState(() {
          visible = false;
        });
      } else {
        setState(() {
          visible = true;
        });
      }
    }

    //print("${_updateDate().toString()}**41");
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 60,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.handshake), label: 'Check in'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.graphic_eq), label: 'Progress'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle), label: 'Learn'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.star), label: 'Community'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Garry'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.grey,
            selectedIconTheme: IconThemeData(color: Colors.black),
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            onTap: (value) {
              setState(() {
                _selectedIndex = value!;
              });
            },
          ),
          backgroundColor: Color(0xffF0F1F2),
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                height: 10.sp,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.back,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  // height: 651.sp,
                  // width: 380.sp,
                  height: screenHeight * 0.76,
                  width: screenWidth * 0.885,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: screenWidth * 0.295,
                            height: screenHeight * 0.021,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      datethree =
                                          datethree.subtract(Duration(days: 5));
                                      datetwo =
                                          datetwo.subtract(Duration(days: 5));
                                      formatterthree = DateFormat('MMM dd')
                                          .format(datethree)
                                          .toString();
                                      formattertwo = DateFormat('MMM dd')
                                          .format(datetwo)
                                          .toString();
                                      print("${formatterone}**184");
                                      print("${formatterthree}**185");
                                    });
                                  },
                                  child: Container(
                                    width: screenWidth * 0.042,
                                    height: screenHeight * 0.018,
                                    decoration: BoxDecoration(
                                        color: Color(0xff65769E),
                                        borderRadius:
                                        BorderRadius.circular(20.sp)),
                                    child: Icon(
                                      CupertinoIcons.back,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.2,
                                  height: screenHeight * 0.021,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    color: Color(0xff65769E),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${formattertwo}-${formatterthree}",
                                      style: FontFamily.nsWhite10_600,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      datethree =
                                          datethree.add(Duration(days: 5));
                                      datetwo = datetwo.add(Duration(days: 5));
                                      formatterthree = DateFormat('MMM dd')
                                          .format(datethree)
                                          .toString();
                                      formattertwo = DateFormat('MMM dd')
                                          .format(datetwo)
                                          .toString();
                                      print("${formatterone}**270");
                                      print("${formatterthree}**270");
                                      loadProgress();
                                      print("working209**");
                                      Visibility(
                                        maintainAnimation: false,
                                        maintainSize: false,
                                        child: CircularProgressIndicator(
                                          color: Colors.red,
                                        ),
                                      );
                                    });
                                  },
                                  child: Container(
                                    width: screenWidth * 0.042,
                                    height: screenHeight * 0.018,
                                    decoration: BoxDecoration(
                                        color: Color(0xff65769E),
                                        borderRadius:
                                        BorderRadius.circular(20.sp)),
                                    child: Icon(
                                      CupertinoIcons.forward,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                        ],
                      ), //1st date container//23-9-23
                      SizedBox(
                        height: 10.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 30.sp,
                          ),
                          Stack(
                            children: [
                              CustomPaint(
                                size: Size(
                                    screenHeight * 0.2, screenWidth * 0.25),
                                painter: ProgressArc(
                                    percentage: 100,
                                    progresscolor: LinearGradient(colors: [
                                      Color(0xffECECEC),
                                      Color(0xffECECEC)
                                    ]),
                                    isBackground: true),
                              ),
                              CustomPaint(
                                size: Size(
                                    screenHeight * 0.2, screenWidth * 0.25),
                                painter: ProgressArc(
                                    percentage: valuePer,
                                    progresscolor: LinearGradient(colors: [
                                      Color(0xffB076EE),
                                      Color(0xff5E239D),
                                    ]),
                                    isBackground: false),
                              ),
                              // CustomPaint(
                              //   size: Size(50,50),
                              //   painter: ProgressArc(arc:  animation.value,progresscolor: Colors.white24,isBackground: true),
                              // ),
                              /*CustomPaint(
                              size: Size(50,50),
                              painter: ProgressArc(arc: animation.value,progresscolor: Colors.purple,isBackground: false),
                            ),*/
                              Positioned(
                                  left: 28,
                                  top: 28,
                                  child: Column(
                                    children: [
                                      Text(
                                        "${valuePer.toInt()}%",
                                        style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.sp,
                                            color: Colors.black),
                                      ),
                                      Text("Compliance",
                                          style: FontFamily.nsGrey16_600),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          //_sfcircularChart(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _pieChart(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: screenWidth * 0.016,
                                    height: screenHeight * 0.008,
                                    color: Color(0xffF8C267),
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Text(
                                    "Cardio vs",
                                    style: FontFamily.nsGrey16_600,
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Container(
                                    width: screenWidth * 0.016,
                                    height: screenHeight * 0.008,
                                    color: Color(0xff3B82F6),
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Text(
                                    "Strength",
                                    style: FontFamily.nsGrey16_600,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ), //Piechart
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 8.sp,
                          ),
                          Text("Pre-workout Readiness",
                              style: FontFamily.nsBlack16_600),
                        ],
                      ), //prework txt
                      SizedBox(
                        height: 6.sp,
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _readlines(),
                              _readlines(),
                              _readlines(),
                              _readlines(),
                              _readlines(),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 10.sp),
                              _preWorkText(headingText: "Mood"),
                              SizedBox(width: 20.sp),
                              _preWorkText(headingText: "Sleep"),
                              SizedBox(width: 10.sp),
                              _preWorkText(headingText: "Nutrition"),
                              SizedBox(width: 10.sp),
                              _preWorkText(headingText: "Focus"),
                              SizedBox(width: 15.sp),
                              _preWorkText(headingText: "Recover"),
                              SizedBox(width: 0.sp),
                            ],
                          )
                        ],
                      ), //preworkrating
                      SizedBox(
                        height: 6.sp,
                      ),
                      Container(
                        //height: 46.sp,
                        height: screenHeight * 0.055,
                        width: screenWidth * 0.875,
                        color: Color(0xff324164),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    dateone =
                                        dateone.subtract(Duration(days: 1));
                                    formatter = DateFormat('MMM dd')
                                        .format(dateone)
                                        .toString();
                                    print("${formatter}**270");
                                  });
                                  // setState(() {
                                  //   // _updateDate(-1);
                                  //   formatter = date.subtract(Duration(days: 1)).toString();
                                  //   print("${formatter}**270");
                                  //   // DateTime.parse("${date.year}-${date.month}-${date.day}");
                                  // });
                                },
                                icon: Icon(
                                  CupertinoIcons.back,
                                  color: Colors.white,
                                )),
                            Text("Today,${formatter}",
                                style: FontFamily.nsWhite16_600),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    dateone = dateone.add(Duration(days: 1));
                                    formatter = DateFormat('MMM dd')
                                        .format(dateone)
                                        .toString();
                                    print("${formatter}**270");
                                  });
                                },
                                icon: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ), //Today Button
                      SizedBox(height: 6.sp),
                      Container(
                        height: screenHeight * 0.35,
                        color: Colors.transparent,
                        child: ListView(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(right: 16.sp, left: 16.sp),
                              child: Container(
                                height: screenHeight * 0.12,
                                width: screenWidth * 0.795,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.sp),
                                    color: Color(0xffF6F7F8)),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: screenHeight * 0.12,
                                      width: screenWidth * 0.12,
                                      decoration: BoxDecoration(
                                        color: Color(0xffB8E1EA),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(child: Text("")),
                                    ),
                                    SizedBox(
                                      width: 2.sp,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Step Counter",
                                          style: FontFamily.nsBlack16_600,
                                        ),
                                        SizedBox(
                                          height: 4.sp,
                                        ),
                                        Text(
                                          "11,000 steps",
                                          style: FontFamily.nsGrey12_400,
                                        )
                                      ],
                                    ),
                                    SizedBox(width: screenWidth * 0.22),
                                    Container(
                                      height: screenHeight * 0.05,
                                      width: screenWidth * 0.08,
                                      decoration: BoxDecoration(
                                        color: Color(0xff65769E),
                                        shape: BoxShape.circle,
                                      ),
                                      child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {},
                                        icon: Icon(CupertinoIcons.add),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.sp,
                            ),
                            _childContainer(screenHeight, screenWidth,
                                headingTxt: 'Walking / Aerobic',
                                subTxt: 'Walk/Bike/Elliptical for 10 mins ',
                                circleColor: Colors.green.shade100), //Workout
                            SizedBox(
                              height: 6.sp,
                            ),
                            _childContainer(screenHeight, screenWidth,
                                headingTxt: 'Exercise',
                                subTxt:
                                'Mini Squat ,Glute Bridge, Incline plank aaaaaaaaaa',
                                circleColor: Colors.red.shade200), //Workout
                            SizedBox(
                              height: 6.sp,
                            ),
                            _childContainer(screenHeight, screenWidth,
                                headingTxt: 'Post Exercise Reflection ',
                                subTxt: 'Barbell Squats, Push-Ups, Plank',
                                circleColor: Colors.blue.shade100), //Workout
                            SizedBox(
                              height: 20.sp,
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: 80.sp, right: 80.sp),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(screenWidth * 0.397,
                                        screenHeight * 0.0465),
                                    backgroundColor: Color(0xff324164),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Start",
                                    style: FontFamily.nsWhite16_600,
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Container(
                        width: screenWidth * 0.160,
                        height: screenHeight * 0.076,
                        color: Color(0xffB8E1EA),
                        // decoration:BoxDecoration(
                        //   color: Colors.red, borderRadius: BorderRadius.circular(50),
                        //   //shape: BoxShape.circle
                        // )
                        // ShapeDecoration(shape: CircleBorder(), color: Colors.white),
                        // child: DecoratedBox(
                        //   decoration: ShapeDecoration(
                        //     color: Color(0xffB8E1EA),
                        //       shape: CircleBorder(),
                        //       // image: DecorationImage(
                        //       //     fit: BoxFit.cover,
                        //       //     image: NetworkImage(
                        //       //       'https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg',
                        //       //     ))
                        //   ),
                        // ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    Text(
                      "Fitness",
                      style: GoogleFonts.nunitoSans(
                          color: Color(0xff324164),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  _childContainer(double screenHeight, double screenWidth,
      {required String headingTxt,
        required String subTxt,
        required Color circleColor}) {
    return Padding(
      padding: EdgeInsets.only(right: 16.sp, left: 16.sp),
      child: Container(
        height: screenHeight * 0.12,
        width: screenWidth * 0.795,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.sp),
            color: Color(0xffF6F7F8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: screenHeight * 0.12,
              width: screenWidth * 0.12,
              decoration: BoxDecoration(
                color: circleColor,
                shape: BoxShape.circle,
              ),
              child: Center(child: Text("")),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(headingTxt, style: FontFamily.nsBlack18_400),
                SizedBox(
                  height: 6.sp,
                ),
                SizedBox(
                  width: 160.sp,
                  child: Text(
                    subTxt,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: FontFamily.nsGrey12_400,
                  ),
                ),
              ],
            ),
            Container(
              height: screenHeight * 0.05,
              width: screenWidth * 0.08,
              decoration: BoxDecoration(
                color: Color(0xff65769E),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(CupertinoIcons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _preWorkText({required String headingText}) {
    return Text(
      headingText,
      style: FontFamily.nsGrey12_600,
    );
  }


  _pieChart() {
    double screenWidth = MediaQuery.of(context).size.width;
    Map<String, double> dataMap = {
      'Cardio vs': 60,
      'Strength': 40,
    };
    List<Color> colorList = [
      const Color(0xffF8C267),
      const Color(0xff3B82F6),
    ];
    return PieChart(
      dataMap: dataMap,
      colorList: colorList,
      chartRadius: screenWidth * 0.2,
      chartLegendSpacing: 1,
      chartValuesOptions: ChartValuesOptions(
        chartValueStyle: GoogleFonts.nunitoSans(
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff5F5F5F)),
        showChartValueBackground: false,
        showChartValuesInPercentage: true,
        decimalPlaces: 0,
      ),
      legendOptions: LegendOptions(
          legendTextStyle: GoogleFonts.nunitoSans(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff5F5F5F)),
          legendShape: BoxShape.rectangle,
          showLegends: false,
          showLegendsInRow: true,
          legendPosition: LegendPosition.bottom),
    );
  }

  _sfcircularChart() {
    double screenWidth = MediaQuery.of(context).size.width;
    return CircularPercentIndicator(
      radius: screenWidth * 0.2,
      lineWidth: 10.0,
      animation: false,
      percent: 0.75,
      arcType: ArcType.HALF,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "75%",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
          ),
          Text("Compliance", style: FontFamily.nsGrey16_600)
        ],
      ),
      circularStrokeCap: CircularStrokeCap.square,
      arcBackgroundColor: Colors.grey.shade100,
      progressColor: Color(0xff5E239D),
    );
  }

  _readlines() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.065,
      width: screenWidth * 0.147,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Color(0xffF6F7F8),
      ),
      child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("4", style: FontFamily.nsBlue28_70),
            ],
          )),
    );
  }
}*/

//Start Button outside scrollview
/*_mCheckInTwo() {
  int _selectedIndex = 0;
  DateTime date = DateTime.now();
  String currentdate = DateFormat.d().format(date);
  String formattedDate = DateFormat('yyyy-MM-dd').format(date);
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  var type = int.parse(currentdate);
  bool visible = true;
  double valuePer = 70;
  //
  // _updateDate(int dayAdd){
  //   setState(() {
  //     date = date.add(Duration(days: dayAdd));
  //   });
  //   print()
  // }
  // _updateDate() {
  //   DateTime date = DateTime.now();
  //   int total = date.day;
  //   int i = 1;
  //   for(int a = total; a >= 5 ;a--){
  //     updatedDate = a;
  //     print("${updatedDate}**40");
  //     print("${a}**39");
  //   }
  //   setState(() {
  //
  //   });
  //   // for(int a=today;a>=10;a--){
  //   //   int total = a-i;
  //   //   print("${total}**40");
  //   //   return  Text(
  //   //     "Today,${formatter} ${total}",
  //   //     style: TextStyle(
  //   //         color: Colors.white,
  //   //         fontWeight: FontWeight.w600,
  //   //         fontSize: 16.sp),
  //   //   );
  //   // }
  //   //print("${_updateDate().toString()}**41");
  //   // if(date.day <= type){
  //   //   print("${type}**35");
  //   //     int i =1;
  //   //     DateTime date = DateTime.now();
  //   //     int today = date.day;
  //   //     for(int a=today;a<=today;a++){
  //   //       int total = a-i;
  //   //       print(total);
  //   //     }
  //   // }
  //   // setState(() {
  //   //   date = date.add(Duration(days: daysToAdd));
  //   //   formatter = DateFormat.MMM().format(date);
  //   //   formattedDate = DateFormat('yyyy-MM-dd').format(date);
  //   // });
  // }
  //print("${updatedDate}**74");

  loadProgress() {
    if (visible == true) {
      setState(() {
        visible = false;
      });
    } else {
      setState(() {
        visible = true;
      });
    }
  }

  //print("${_updateDate().toString()}**41");
  return SafeArea(
    child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 60,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.handshake), label: 'Check in'),
            BottomNavigationBarItem(
                icon: Icon(Icons.graphic_eq), label: 'Progress'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle), label: 'Learn'),
            BottomNavigationBarItem(
                icon: Icon(Icons.star), label: 'Community'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Garry'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          onTap: (value) {
            setState(() {
              _selectedIndex = value!;
            });
          },
        ),
        backgroundColor: Color(0xffF0F1F2),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              height: 10.sp,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.back,
                    size: 30,
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                // height: 651.sp,
                // width: 380.sp,
                height: screenHeight * 0.79,
                width: screenWidth * 0.885,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: screenWidth * 0.295,
                          height: screenHeight * 0.021,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    datethree =
                                        datethree.subtract(Duration(days: 5));
                                    datetwo =
                                        datetwo.subtract(Duration(days: 5));
                                    formatterthree = DateFormat('MMM dd')
                                        .format(datethree)
                                        .toString();
                                    formattertwo = DateFormat('MMM dd')
                                        .format(datetwo)
                                        .toString();
                                    print("${formatterone}**184");
                                    print("${formatterthree}**185");
                                  });
                                },
                                child: Container(
                                  width: screenWidth * 0.042,
                                  height: screenHeight * 0.018,
                                  decoration: BoxDecoration(
                                      color: Color(0xff65769E),
                                      borderRadius:
                                      BorderRadius.circular(20.sp)),
                                  child: Icon(
                                    CupertinoIcons.back,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.2,
                                height: screenHeight * 0.021,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  color: Color(0xff65769E),
                                ),
                                child: Center(
                                  child: Text(
                                    "${formattertwo}-${formatterthree}",
                                    style: FontFamily.nsWhite10_600,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    datethree =
                                        datethree.add(Duration(days: 5));
                                    datetwo = datetwo.add(Duration(days: 5));
                                    formatterthree = DateFormat('MMM dd')
                                        .format(datethree)
                                        .toString();
                                    formattertwo = DateFormat('MMM dd')
                                        .format(datetwo)
                                        .toString();
                                    print("${formatterone}**270");
                                    print("${formatterthree}**270");
                                    loadProgress();
                                    print("working209**");
                                    Visibility(
                                      maintainAnimation: false,
                                      maintainSize: false,
                                      child: CircularProgressIndicator(
                                        color: Colors.red,
                                      ),
                                    );
                                  });
                                },
                                child: Container(
                                  width: screenWidth * 0.042,
                                  height: screenHeight * 0.018,
                                  decoration: BoxDecoration(
                                      color: Color(0xff65769E),
                                      borderRadius:
                                      BorderRadius.circular(20.sp)),
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                      ],
                    ), //1st date container//23-9-23
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30.sp,
                        ),
                        Stack(
                          children: [
                            CustomPaint(
                              size: Size(
                                  screenHeight * 0.2, screenWidth * 0.25),
                              painter: ProgressArc(
                                  percentage: 100,
                                  progresscolor: LinearGradient(colors: [
                                    Color(0xffECECEC),
                                    Color(0xffECECEC)
                                  ]),
                                  isBackground: true),
                            ),
                            CustomPaint(
                              size: Size(
                                  screenHeight * 0.2, screenWidth * 0.25),
                              painter: ProgressArc(
                                  percentage: valuePer,
                                  progresscolor: LinearGradient(colors: [
                                    Color(0xffB076EE),
                                    Color(0xff5E239D),
                                  ]),
                                  isBackground: false),
                            ),
                            // CustomPaint(
                            //   size: Size(50,50),
                            //   painter: ProgressArc(arc:  animation.value,progresscolor: Colors.white24,isBackground: true),
                            // ),
                            /*CustomPaint(
                              size: Size(50,50),
                              painter: ProgressArc(arc: animation.value,progresscolor: Colors.purple,isBackground: false),
                            ),*/
                            Positioned(
                                left: 28,
                                top: 28,
                                child: Column(
                                  children: [
                                    Text(
                                      "${valuePer.toInt()}%",
                                      style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.sp,
                                          color: Colors.black),
                                    ),
                                    Text("Compliance",
                                        style: FontFamily.nsGrey16_600),
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        //_sfcircularChart(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _pieChart(),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: screenWidth * 0.016,
                                  height: screenHeight * 0.008,
                                  color: Color(0xffF8C267),
                                ),
                                SizedBox(
                                  width: 2.sp,
                                ),
                                Text(
                                  "Cardio vs",
                                  style: FontFamily.nsGrey16_600,
                                ),
                                SizedBox(
                                  width: 2.sp,
                                ),
                                Container(
                                  width: screenWidth * 0.016,
                                  height: screenHeight * 0.008,
                                  color: Color(0xff3B82F6),
                                ),
                                SizedBox(
                                  width: 2.sp,
                                ),
                                Text(
                                  "Strength",
                                  style: FontFamily.nsGrey16_600,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ), //Piechart
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 8.sp,
                        ),
                        Text("Pre-workout Readiness",
                            style: FontFamily.nsBlack16_600),
                      ],
                    ), //prework txt
                    SizedBox(
                      height: 6.sp,
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _readlines(),
                            _readlines(),
                            _readlines(),
                            _readlines(),
                            _readlines(),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(width: 10.sp),
                            _preWorkText(headingText: "Mood"),
                            SizedBox(width: 20.sp),
                            _preWorkText(headingText: "Sleep"),
                            SizedBox(width: 10.sp),
                            _preWorkText(headingText: "Nutrition"),
                            SizedBox(width: 10.sp),
                            _preWorkText(headingText: "Focus"),
                            SizedBox(width: 15.sp),
                            _preWorkText(headingText: "Recover"),
                            SizedBox(width: 0.sp),
                          ],
                        )
                      ],
                    ), //preworkrating
                    SizedBox(
                      height: 6.sp,
                    ),
                    Container(
                      //height: 46.sp,
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.875,
                      color: Color(0xff324164),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  dateone =
                                      dateone.subtract(Duration(days: 1));
                                  formatter = DateFormat('MMM dd')
                                      .format(dateone)
                                      .toString();
                                  print("${formatter}**270");
                                });
                                // setState(() {
                                //   // _updateDate(-1);
                                //   formatter = date.subtract(Duration(days: 1)).toString();
                                //   print("${formatter}**270");
                                //   // DateTime.parse("${date.year}-${date.month}-${date.day}");
                                // });
                              },
                              icon: Icon(
                                CupertinoIcons.back,
                                color: Colors.white,
                              )),
                          Text("Today,${formatter}",
                              style: FontFamily.nsWhite16_600),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  dateone = dateone.add(Duration(days: 1));
                                  formatter = DateFormat('MMM dd')
                                      .format(dateone)
                                      .toString();
                                  print("${formatter}**270");
                                });
                              },
                              icon: Icon(
                                CupertinoIcons.forward,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ), //Today Button
                    SizedBox(
                        height: 6.sp),
                    Container(
                      height: screenHeight * 0.335,
                      color: Colors.transparent,
                      child: ListView(
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.only(right: 16.sp, left: 16.sp),
                            child: Container(
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.795,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: screenHeight * 0.12,
                                    width: screenWidth * 0.12,
                                    decoration: BoxDecoration(
                                      color: Color(0xffB8E1EA),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(child: Text("")),
                                  ),
                                  SizedBox(
                                    width: 2.sp,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Step Counter",
                                        style: FontFamily.nsBlack16_600,
                                      ),
                                      SizedBox(
                                        height: 4.sp,
                                      ),
                                      Text(
                                        "11,000 steps",
                                        style: FontFamily.nsGrey12_400,
                                      )
                                    ],
                                  ),
                                  SizedBox(width: screenWidth * 0.22),
                                  Container(
                                    height: screenHeight * 0.05,
                                    width: screenWidth * 0.08,
                                    decoration: BoxDecoration(
                                      color: Color(0xff65769E),
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                      color: Colors.white,
                                      onPressed: () {},
                                      icon: Icon(CupertinoIcons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.sp,
                          ),
                          _childContainer(screenHeight, screenWidth,
                              headingTxt: 'Walking / Aerobic',
                              subTxt: 'Walk/Bike/Elliptical for 10 mins ',
                              circleColor: Colors.green.shade100), //Workout
                          SizedBox(
                            height: 6.sp,
                          ),
                          _childContainer(screenHeight, screenWidth,
                              headingTxt: 'Exercise',
                              subTxt:
                              'Mini Squat ,Glute Bridge, Incline plank aaaaaaaaaa',
                              circleColor: Colors.red.shade200), //Workout
                          SizedBox(
                            height: 6.sp,
                          ),
                          _childContainer(screenHeight, screenWidth,
                              headingTxt: 'Post Exercise Reflection ',
                              subTxt: 'Barbell Squats, Push-Ups, Plank',
                              circleColor: Colors.blue.shade100), //Workout
                          SizedBox(
                            height: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.sp,),//List of containers
                    Padding(
                      padding:
                      EdgeInsets.only(left: 80.sp, right: 80.sp,top: 0.sp),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(screenWidth * 0.397,
                                screenHeight * 0.0465),
                            backgroundColor: Color(0xff324164),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Start",
                            style: FontFamily.nsWhite16_600,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    child: Container(
                      width: screenWidth * 0.160,
                      height: screenHeight * 0.076,
                      color: Color(0xffB8E1EA),
                      // decoration:BoxDecoration(
                      //   color: Colors.red, borderRadius: BorderRadius.circular(50),
                      //   //shape: BoxShape.circle
                      // )
                      // ShapeDecoration(shape: CircleBorder(), color: Colors.white),
                      // child: DecoratedBox(
                      //   decoration: ShapeDecoration(
                      //     color: Color(0xffB8E1EA),
                      //       shape: CircleBorder(),
                      //       // image: DecorationImage(
                      //       //     fit: BoxFit.cover,
                      //       //     image: NetworkImage(
                      //       //       'https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg',
                      //       //     ))
                      //   ),
                      // ),
                    ),
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  Text(
                    "Fitness",
                    style: GoogleFonts.nunitoSans(
                        color: Color(0xff324164),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        )),
  );
}*/

//Button on stack
/* _mCheckInTwo() {
  int _selectedIndex = 0;
  DateTime date = DateTime.now();
  String currentdate = DateFormat.d().format(date);
  String formattedDate = DateFormat('yyyy-MM-dd').format(date);
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  var type = int.parse(currentdate);
  bool visible = true;
  double valuePer = 70;
  //
  // _updateDate(int dayAdd){
  //   setState(() {
  //     date = date.add(Duration(days: dayAdd));
  //   });
  //   print()
  // }
  // _updateDate() {
  //   DateTime date = DateTime.now();
  //   int total = date.day;
  //   int i = 1;
  //   for(int a = total; a >= 5 ;a--){
  //     updatedDate = a;
  //     print("${updatedDate}**40");
  //     print("${a}**39");
  //   }
  //   setState(() {
  //
  //   });
  //   // for(int a=today;a>=10;a--){
  //   //   int total = a-i;
  //   //   print("${total}**40");
  //   //   return  Text(
  //   //     "Today,${formatter} ${total}",
  //   //     style: TextStyle(
  //   //         color: Colors.white,
  //   //         fontWeight: FontWeight.w600,
  //   //         fontSize: 16.sp),
  //   //   );
  //   // }
  //   //print("${_updateDate().toString()}**41");
  //   // if(date.day <= type){
  //   //   print("${type}**35");
  //   //     int i =1;
  //   //     DateTime date = DateTime.now();
  //   //     int today = date.day;
  //   //     for(int a=today;a<=today;a++){
  //   //       int total = a-i;
  //   //       print(total);
  //   //     }
  //   // }
  //   // setState(() {
  //   //   date = date.add(Duration(days: daysToAdd));
  //   //   formatter = DateFormat.MMM().format(date);
  //   //   formattedDate = DateFormat('yyyy-MM-dd').format(date);
  //   // });
  // }
  //print("${updatedDate}**74");

  loadProgress() {
    if (visible == true) {
      setState(() {
        visible = false;
      });
    } else {
      setState(() {
        visible = true;
      });
    }
  }

  //print("${_updateDate().toString()}**41");
  return SafeArea(
    child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 60,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.handshake), label: 'Check in'),
            BottomNavigationBarItem(
                icon: Icon(Icons.graphic_eq), label: 'Progress'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle), label: 'Learn'),
            BottomNavigationBarItem(
                icon: Icon(Icons.star), label: 'Community'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Garry'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          onTap: (value) {
            setState(() {
              _selectedIndex = value!;
            });
          },
        ),
        backgroundColor: Color(0xffF0F1F2),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              height: 10.sp,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.back,
                    size: 30,
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                // height: 651.sp,
                // width: 380.sp,
                height: screenHeight * 0.78,
                width: screenWidth * 0.885,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: screenWidth * 0.295,
                          height: screenHeight * 0.021,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    datethree =
                                        datethree.subtract(Duration(days: 5));
                                    datetwo =
                                        datetwo.subtract(Duration(days: 5));
                                    formatterthree = DateFormat('MMM dd')
                                        .format(datethree)
                                        .toString();
                                    formattertwo = DateFormat('MMM dd')
                                        .format(datetwo)
                                        .toString();
                                    print("${formatterone}**184");
                                    print("${formatterthree}**185");
                                  });
                                },
                                child: Container(
                                  width: screenWidth * 0.042,
                                  height: screenHeight * 0.018,
                                  decoration: BoxDecoration(
                                      color: Color(0xff65769E),
                                      borderRadius:
                                      BorderRadius.circular(20.sp)),
                                  child: Icon(
                                    CupertinoIcons.back,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.2,
                                height: screenHeight * 0.021,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  color: Color(0xff65769E),
                                ),
                                child: Center(
                                  child: Text(
                                    "${formattertwo}-${formatterthree}",
                                    style: FontFamily.nsWhite10_600,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    datethree =
                                        datethree.add(Duration(days: 5));
                                    datetwo = datetwo.add(Duration(days: 5));
                                    formatterthree = DateFormat('MMM dd')
                                        .format(datethree)
                                        .toString();
                                    formattertwo = DateFormat('MMM dd')
                                        .format(datetwo)
                                        .toString();
                                    print("${formatterone}**270");
                                    print("${formatterthree}**270");
                                    loadProgress();
                                    print("working209**");
                                    Visibility(
                                      maintainAnimation: false,
                                      maintainSize: false,
                                      child: CircularProgressIndicator(
                                        color: Colors.red,
                                      ),
                                    );
                                  });
                                },
                                child: Container(
                                  width: screenWidth * 0.042,
                                  height: screenHeight * 0.018,
                                  decoration: BoxDecoration(
                                      color: Color(0xff65769E),
                                      borderRadius:
                                      BorderRadius.circular(20.sp)),
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                      ],
                    ), //1st date container//23-9-23
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30.sp,
                        ),
                        Stack(
                          children: [
                            CustomPaint(
                              size: Size(
                                  screenHeight * 0.2, screenWidth * 0.25),
                              painter: ProgressArc(
                                  percentage: 100,
                                  progresscolor: LinearGradient(colors: [
                                    Color(0xffECECEC),
                                    Color(0xffECECEC)
                                  ]),
                                  isBackground: true),
                            ),
                            CustomPaint(
                              size: Size(
                                  screenHeight * 0.2, screenWidth * 0.25),
                              painter: ProgressArc(
                                  percentage: valuePer,
                                  progresscolor: LinearGradient(colors: [
                                    Color(0xffB076EE),
                                    Color(0xff5E239D),
                                  ]),
                                  isBackground: false),
                            ),
                            // CustomPaint(
                            //   size: Size(50,50),
                            //   painter: ProgressArc(arc:  animation.value,progresscolor: Colors.white24,isBackground: true),
                            // ),
                            /*CustomPaint(
                              size: Size(50,50),
                              painter: ProgressArc(arc: animation.value,progresscolor: Colors.purple,isBackground: false),
                            ),*/
                            Positioned(
                                left: 28,
                                top: 28,
                                child: Column(
                                  children: [
                                    Text(
                                      "${valuePer.toInt()}%",
                                      style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.sp,
                                          color: Colors.black),
                                    ),
                                    Text("Compliance",
                                        style: FontFamily.nsGrey16_600),
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        //_sfcircularChart(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _pieChart(),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: screenWidth * 0.016,
                                  height: screenHeight * 0.008,
                                  color: Color(0xffF8C267),
                                ),
                                SizedBox(
                                  width: 2.sp,
                                ),
                                Text(
                                  "Cardio vs",
                                  style: FontFamily.nsGrey16_600,
                                ),
                                SizedBox(
                                  width: 2.sp,
                                ),
                                Container(
                                  width: screenWidth * 0.016,
                                  height: screenHeight * 0.008,
                                  color: Color(0xff3B82F6),
                                ),
                                SizedBox(
                                  width: 2.sp,
                                ),
                                Text(
                                  "Strength",
                                  style: FontFamily.nsGrey16_600,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ), //Piechart
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 8.sp,
                        ),
                        Text("Pre-workout Readiness",
                            style: FontFamily.nsBlack16_600),
                      ],
                    ), //prework txt
                    SizedBox(
                      height: 6.sp,
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _readlines(),
                            _readlines(),
                            _readlines(),
                            _readlines(),
                            _readlines(),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(width: 10.sp),
                            _preWorkText(headingText: "Mood"),
                            SizedBox(width: 20.sp),
                            _preWorkText(headingText: "Sleep"),
                            SizedBox(width: 10.sp),
                            _preWorkText(headingText: "Nutrition"),
                            SizedBox(width: 10.sp),
                            _preWorkText(headingText: "Focus"),
                            SizedBox(width: 15.sp),
                            _preWorkText(headingText: "Recover"),
                            SizedBox(width: 0.sp),
                          ],
                        )
                      ],
                    ), //preworkrating
                    SizedBox(
                      height: 6.sp,
                    ),
                    Container(
                      //height: 46.sp,
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.875,
                      color: Color(0xff324164),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  dateone =
                                      dateone.subtract(Duration(days: 1));
                                  formatter = DateFormat('MMM dd')
                                      .format(dateone)
                                      .toString();
                                  print("${formatter}**270");
                                });
                                // setState(() {
                                //   // _updateDate(-1);
                                //   formatter = date.subtract(Duration(days: 1)).toString();
                                //   print("${formatter}**270");
                                //   // DateTime.parse("${date.year}-${date.month}-${date.day}");
                                // });
                              },
                              icon: Icon(
                                CupertinoIcons.back,
                                color: Colors.white,
                              )),
                          Text("Today,${formatter}",
                              style: FontFamily.nsWhite16_600),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  dateone = dateone.add(Duration(days: 1));
                                  formatter = DateFormat('MMM dd')
                                      .format(dateone)
                                      .toString();
                                  print("${formatter}**270");
                                });
                              },
                              icon: Icon(
                                CupertinoIcons.forward,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ), //Today Button
                    SizedBox(
                        height: 6.sp),
                    Container(
                      height: screenHeight * 0.39,
                      color: Colors.transparent,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ListView(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(right: 16.sp, left: 16.sp),
                                child: Container(
                                  height: screenHeight * 0.12,
                                  width: screenWidth * 0.795,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.sp),
                                      color: Color(0xffF6F7F8)),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: screenHeight * 0.12,
                                        width: screenWidth * 0.12,
                                        decoration: BoxDecoration(
                                          color: Color(0xffB8E1EA),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(child: Text("")),
                                      ),
                                      SizedBox(
                                        width: 2.sp,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Step Counter",
                                            style: FontFamily.nsBlack16_600,
                                          ),
                                          SizedBox(
                                            height: 4.sp,
                                          ),
                                          Text(
                                            "11,000 steps",
                                            style: FontFamily.nsGrey12_400,
                                          )
                                        ],
                                      ),
                                      SizedBox(width: screenWidth * 0.22),
                                      Container(
                                        height: screenHeight * 0.05,
                                        width: screenWidth * 0.08,
                                        decoration: BoxDecoration(
                                          color: Color(0xff65769E),
                                          shape: BoxShape.circle,
                                        ),
                                        child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {},
                                          icon: Icon(CupertinoIcons.add),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6.sp,
                              ),
                              _childContainer(screenHeight, screenWidth,
                                  headingTxt: 'Walking / Aerobic',
                                  subTxt: 'Walk/Bike/Elliptical for 10 mins ',
                                  circleColor: Colors.green.shade100), //Workout
                              SizedBox(
                                height: 6.sp,
                              ),
                              _childContainer(screenHeight, screenWidth,
                                  headingTxt: 'Exercise',
                                  subTxt:
                                  'Mini Squat ,Glute Bridge, Incline plank aaaaaaaaaa',
                                  circleColor: Colors.red.shade200), //Workout
                              SizedBox(
                                height: 6.sp,
                              ),
                              _childContainer(screenHeight, screenWidth,
                                  headingTxt: 'Post Exercise Reflection ',
                                  subTxt: 'Barbell Squats, Push-Ups, Plank',
                                  circleColor: Colors.blue.shade100), //Workout
                              SizedBox(
                                height: 20.sp,
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: 80.sp, right: 80.sp,bottom: 0.sp),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(screenWidth * 0.397,
                                      screenHeight * 0.0465),
                                  backgroundColor: Color(0xff324164),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Start",
                                  style: FontFamily.nsWhite16_600,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.sp,),//List of containers
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    child: Container(
                      width: screenWidth * 0.160,
                      height: screenHeight * 0.076,
                      color: Color(0xffB8E1EA),
                      // decoration:BoxDecoration(
                      //   color: Colors.red, borderRadius: BorderRadius.circular(50),
                      //   //shape: BoxShape.circle
                      // )
                      // ShapeDecoration(shape: CircleBorder(), color: Colors.white),
                      // child: DecoratedBox(
                      //   decoration: ShapeDecoration(
                      //     color: Color(0xffB8E1EA),
                      //       shape: CircleBorder(),
                      //       // image: DecorationImage(
                      //       //     fit: BoxFit.cover,
                      //       //     image: NetworkImage(
                      //       //       'https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg',
                      //       //     ))
                      //   ),
                      // ),
                    ),
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  Text(
                    "Fitness",
                    style: GoogleFonts.nunitoSans(
                        color: Color(0xff324164),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        )),
  );
}*/


//preWork with all expanded button
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/newCheck_in/checkIn3.dart';
import 'package:flutter_screens/newCheck_in/utiltext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/*class preWorkoutone extends StatefulWidget {
  const preWorkoutone({Key? key}) : super(key: key);

  @override
  State<preWorkoutone> createState() => _preWorkoutoneState();
}

class _preWorkoutoneState extends State<preWorkoutone> {
  int? currentlyExpandedIndex;
  bool isExpanded = true;
  bool isExpandedone = true;
  bool isExpandedtwo = true;
  bool isExpandedthree = true;
  bool isExpandedfour = true;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return _preWorkWidget();
    });
  }

  _preWorkWidget() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF0F1F2),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.transparent,
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.back,
                          size: 30.sp,
                        ),
                      ),
                      SizedBox(
                        width: 50.sp,
                      ),
                      Center(
                          child: Text(
                            "Pre-workout readiness",
                            style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                          )),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                ),
                Container(
                  //height: screenHeight * 0.75,
                  width: screenWidth * 0.885,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10.sp,
                      ),
                      Center(
                        child: Text(
                          "Complete all 5 steps",
                          style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20.sp,
                              color: Color(0xff666666)),
                        ),
                      ),
                      Divider(
                        height: 2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isExpandedone == true ||
                                    isExpandedtwo == true ||
                                    isExpandedthree == true ||
                                    isExpandedfour == true) {
                                  isExpanded = !isExpanded;
                                }
                              });
                            },
                            child: Card(
                              child: isExpanded
                                  ? headContainer(screenWidth, screenHeight,
                                  headingTxt: '1.Mood and Motivation')
                                  : expandContainer(screenHeight, screenWidth,
                                  headingEtxt: '1.Mood and Motivation',
                                  expText:
                                  "How motivated do you feel to work out today?"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isExpanded == true ||
                                    isExpandedtwo == true ||
                                    isExpandedthree == true ||
                                    isExpandedfour == true) {
                                  isExpandedone = !isExpandedone;
                                  print("${isExpandedone.toString()}**111");
                                }
                              });
                            },
                            child: Card(
                              child: isExpandedone
                                  ? headContainer(screenWidth, screenHeight,
                                  headingTxt: '2.Recovery')
                                  : expandContainer(screenHeight, screenWidth,
                                  headingEtxt: '2.Recovery',
                                  expText:
                                  "How motivated do you feel to work out today?"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isExpandedone == true ||
                                    isExpanded == true ||
                                    isExpandedthree == true ||
                                    isExpandedfour == true) {
                                  isExpandedtwo = !isExpandedtwo;
                                }
                              });
                            },
                            child: Card(
                              child: isExpandedtwo
                                  ? headContainer(screenWidth, screenHeight,
                                  headingTxt: '3.Nutrition')
                                  : expandContainer(screenHeight, screenWidth,
                                  headingEtxt: '3.Nutrition',
                                  expText:
                                  "How motivated do you feel to work out today?"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isExpandedone == true ||
                                    isExpandedtwo == true ||
                                    isExpanded == true ||
                                    isExpandedfour == true) {
                                  isExpandedthree = !isExpandedthree;
                                }
                              });
                            },
                            child: Card(
                              child: isExpandedthree
                                  ? headContainer(screenWidth, screenHeight,
                                  headingTxt: '4.Sleep Quality')
                                  : expandContainer(screenHeight, screenWidth,
                                  headingEtxt: '4.Sleep Quality',
                                  expText:
                                  "How motivated do you feel to work out today?"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isExpandedone == true ||
                                    isExpandedtwo == true ||
                                    isExpandedthree == true ||
                                    isExpanded == true) {
                                  isExpandedfour = !isExpandedfour;
                                }
                              });
                            },
                            child: Card(
                              child: isExpandedfour
                                  ? headContainer(screenWidth, screenHeight,
                                  headingTxt: '5.Mental Focus')
                                  : expandContainer(screenHeight, screenWidth,
                                  headingEtxt: '5.Mental Focus',
                                  expText:
                                  "How motivated do you feel to work out today?"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200.sp, top: 30.sp),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize:
                        Size(screenWidth * 0.25, screenHeight * 0.0465),
                        backgroundColor: Color(0xff324164),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Next>",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )),
                )
              ],
            ),
          )),
    );
    /*Column(
      children: [
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '1.Mood and Motivation',
            containerTile:
            'How motivated do you feel to work out today?',
            index: 1),
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '2.Recovery',
            containerTile:
            'How motivated do you feel to work out today?',
            index: 2),
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '3.Nutrition',
            containerTile:
            'How motivated do you feel to work out today?',
            index: 3),
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '4.Sleep Quality',
            containerTile:
            'How motivated do you feel to work out today?',
            index: 4),
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '5.Mental Focus',
            containerTile:
            'How focused do you feel right now and how ready are you for your workout mentally?',
            index: 5),
      ],
    ),*/
  }

  expandContainer(
      double screenHeight,
      double screenWidth, {
        required headingEtxt,
        required expText,
      }) {
    return Container(
      color: Color(0xffFFFFFF),
      height: screenHeight * 0.309,
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Color(0xffEAF3FF),
            width: screenWidth * 0.908,
            height: screenHeight * 0.075,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  headingEtxt,
                  style: FontFamily.nsBlue18_600,
                ),
                SizedBox(
                  width: 0.sp,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.sp,
            child: Divider(
              height: 2,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 10.sp),
            child: Container(
              width: screenWidth,
              color: Colors.transparent,
              child: Text(
                expText,
                style: GoogleFonts.nunitoSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff666666)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
            child: Container(
              height: screenHeight * 0.07,
              color: Colors.transparent,
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Low",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  ratingIcon(),
                  ratingIcon(),
                  ratingIcon(),
                  ratingIcon(),
                  ratingIcon(),
                  Text(
                    "High",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 24.sp,
            width: 200.sp,
            decoration: BoxDecoration(
                color: Color(0xffEAF3FF),
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }

  Container headContainer(
      double screenWidth,
      double screenHeight, {
        required headingTxt,
      }) {
    return Container(
      color: Color(0xffFFFFFF),
      width: screenWidth * 0.908,
      height: screenHeight * 0.075,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 10.sp,),
          Text(
            headingTxt,
            style: FontFamily.nsBlue18_600,
          ),
          SizedBox(
            width: 50.sp,
          ),
          Text(
            "To Do",
            style: FontFamily.nsGrey12_600,
          )
        ],
      ),
    );
  }

  _preWorkGoals(double screenHeight, double screenWidth, bool customIcon,
      {required String tileTitle,
        required String containerTile,
        required int index}) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: IgnorePointer(
        ignoring: true,
        child: ExpansionTile(
          collapsedBackgroundColor: Color.fromARGB(100, 200, 200, 200),
          title: Container(
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              color: currentlyExpandedIndex == index
                  ? Color(0xffEAF3FF)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(20.sp),
            ),
            height: screenHeight * 0.07,
            width: screenWidth,
            child: Text(
              tileTitle,
              style: GoogleFonts.nunitoSans(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff324164),
              ),
            ),
          ),
          trailing: Text(
            "ToDo",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xff666666)),
          ),
          backgroundColor: isExpanded ? Color(0xffEAF3FF) : Colors.transparent,
          children: [
            Container(
              color: Color(0xffFFFFFF),
              height: screenHeight * 0.209,
              width: screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10.sp,
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 10.sp, right: 10.sp, top: 10.sp),
                    child: Container(
                      width: screenWidth,
                      color: Colors.transparent,
                      child: Text(
                        containerTile,
                        style: GoogleFonts.nunitoSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff666666)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                    child: Container(
                      height: screenHeight * 0.07,
                      color: Colors.transparent,
                      width: screenWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Low",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                          ratingIcon(),
                          ratingIcon(),
                          ratingIcon(),
                          ratingIcon(),
                          ratingIcon(),
                          Text(
                            "High",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 24.sp,
                    width: 200.sp,
                    decoration: BoxDecoration(
                        color: Color(0xffEAF3FF),
                        borderRadius: BorderRadius.circular(20)),
                  )
                ],
              ),
            )
          ],
          onExpansionChanged: (bool expanding) {
            if (expanding) {
              setState(() {
                currentlyExpandedIndex = index;
              });
            } else {
              setState(() {
                currentlyExpandedIndex = null;
              });
            }
          },
          initiallyExpanded: index == currentlyExpandedIndex,
          //onExpansionChanged: (bool expanding) => setState(() => this.isExpanded = expanding),
        ),
      ),
    );
  }

  ratingIcon() {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.star,
          size: 30.sp,
          color: Colors.grey[400],
        ));
  }
}

class PreWorkout{
  final String heading;
  final String question;
  final int rating;
  final bool isExpanding;
  PreWorkout({required this.heading,required this.question,required this.rating,required this.isExpanding});
  List<PreWorkout> preworklist = [
    PreWorkout(heading: "Mood and Motivation", question: "How motivated do you feel to work out today?", rating: 0, isExpanding: true),
    PreWorkout(heading: "Recovery", question: "How motivated do you feel to work out today?", rating: 0, isExpanding: false),
    PreWorkout(heading: "Nutrition", question: "How motivated do you feel to work out today?", rating: 0, isExpanding: false),
    PreWorkout(heading: "Sleep Quality", question: "How motivated do you feel to work out today?", rating: 0, isExpanding: false),
    PreWorkout(heading: "Mental Focus", question: "How focused do you feel right now and how ready are you for your workout mentally?", rating: 0, isExpanding: false),
  ];
}*/

/*_preWorkWidget() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF0F1F2),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.transparent,
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.back,
                          size: 30.sp,
                        ),
                      ),
                      SizedBox(
                        width: 50.sp,
                      ),
                      Center(
                          child: Text(
                        "Pre-workout readiness",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      )),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                ),
                Container(
                  //height: screenHeight * 0.75,
                  width: screenWidth * 0.885,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10.sp,
                      ),
                      Center(
                        child: Text(
                          "Complete all 5 steps",
                          style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 20.sp,
                              color: Color(0xff666666)),
                        ),
                      ),
                      Divider(
                        height: 2,
                      ),
                      Column(
                        children: [
                          Container(
                            //height: screenHeight * 0.075,
                            width: screenWidth * 0.885,
                            color: Colors.red,
                            child: ExpansionPanelList(
                              expansionCallback: (int index,bool isExpanding){
                                setState(() {
                                  preworklist[index].isExpanding = !preworklist[index].isExpanding;
                                  print("${index}${isExpanding.toString()}**109");
                                });
                              },
                              children: preworklist.map<ExpansionPanel>((PreWorkout preWorkout){
                                return ExpansionPanel(
                                  canTapOnHeader: true,
                                  headerBuilder: (BuildContext context,bool isExpanded){
                                    return ListTile(
                                      //trailing: Text("ToDo",),
                                      title: headContainer(screenWidth, screenHeight, headingTxt: preWorkout.heading),
                                    );
                                  },
                                  body: ListTile(
                                    title:expandContainer(screenHeight, screenWidth, headingEtxt: preWorkout.heading, expText: preWorkout.question)
                                  ),
                                  isExpanded: preWorkout.isExpanding,
                                );
                              }).toList(),
                            ),

                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200.sp, top: 30.sp),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize:
                            Size(screenWidth * 0.25, screenHeight * 0.0465),
                        backgroundColor: Color(0xff324164),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Next>",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )),
                )
              ],
            ),
          )),
    );
    /*Column(
      children: [
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '1.Mood and Motivation',
            containerTile:
            'How motivated do you feel to work out today?',
            index: 1),
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '2.Recovery',
            containerTile:
            'How motivated do you feel to work out today?',
            index: 2),
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '3.Nutrition',
            containerTile:
            'How motivated do you feel to work out today?',
            index: 3),
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '4.Sleep Quality',
            containerTile:
            'How motivated do you feel to work out today?',
            index: 4),
        _preWorkGoals(screenHeight, screenWidth, _customIcon,
            tileTitle: '5.Mental Focus',
            containerTile:
            'How focused do you feel right now and how ready are you for your workout mentally?',
            index: 5),
      ],
    ),*/
  }*/

//RatingIcon
/*ratingIcon(PreWorkout preWorkout) {
    return FivePointedStar(
        defaultSelectedCount: preWorkout.rating,
        gap: 12,
        selectedColor: Color(0xff324164),
        size: Size(25.sp, 25.sp),
        onChange: (count) {
          setState(() {
            //preworklist[index].rating = count;
            preWorkout.rating = count;
            //rating = count;
            print("${rategiven}**433");
            print("${mycount}**407");
            print("${count}**408");
          });
        });
    // return RatingBarIndicator(
    //   itemBuilder: (context, index) =>IconButton(
    //       onPressed: () {
    //         setState(() {
    //           isSelect = !isSelect;
    //         });
    //       },
    //       icon: Icon(
    //         Icons.star,
    //         size: 30.sp,
    //         color: isSelect ? Colors.grey[400]:Color(0xff324164),
    //       )),
    //   itemCount: 5,
    //   itemSize: 30.0,
    // );
    // return IconButton(
    //     onPressed: () {
    //       setState(() {
    //         isSelect = !isSelect;
    //       });
    //     },
    //     icon: Icon(
    //       Icons.star,
    //       size: 30.sp,
    //       color: isSelect ? Colors.grey[400]:Color(0xff324164),
    //     ));
  }*/

/*_preWorkGoals(double screenHeight, double screenWidth, bool customIcon,
    {required String tileTitle,
      required String containerTile,
      required int index}) {
  return Card(
    elevation: 2,
    color: Colors.white,
    child: IgnorePointer(
      ignoring: true,
      child: ExpansionTile(
        collapsedBackgroundColor: Color.fromARGB(100, 200, 200, 200),
        title: Container(
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            color: currentlyExpandedIndex == index
                ? Color(0xffEAF3FF)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20.sp),
          ),
          height: screenHeight * 0.07,
          width: screenWidth,
          child: Text(
            tileTitle,
            style: GoogleFonts.nunitoSans(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff324164),
            ),
          ),
        ),
        trailing: Text(
          "ToDo",
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Color(0xff666666)),
        ),
        backgroundColor: isExpanded ? Color(0xffEAF3FF) : Colors.red,
        children: [
          Container(
            color: Color(0xffFFFFFF),
            height: screenHeight * 0.209,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.sp,
                ),
                Padding(
                  padding:
                  EdgeInsets.only(left: 30.sp, right: 30.sp, top: 10.sp),
                  child: Container(
                    width: screenWidth,
                    color: Colors.transparent,
                    child: Text(
                      containerTile,
                      style: GoogleFonts.nunitoSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff666666)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                  child: Container(
                    height: screenHeight * 0.07,
                    color: Colors.transparent,
                    width: screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Low",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        // ratingIcon(),
                        // ratingIcon(),
                        // ratingIcon(),
                        // ratingIcon(),
                        // ratingIcon(),
                        Text(
                          "High",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 24.sp,
                  width: 200.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffEAF3FF),
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          )
        ],
        onExpansionChanged: (bool expanding) {
          if (expanding) {
            setState(() {
              currentlyExpandedIndex = index;
            });
          } else {
            setState(() {
              currentlyExpandedIndex ;
            });
          }
        },
        initiallyExpanded: index == currentlyExpandedIndex,
        //onExpansionChanged: (bool expanding) => setState(() => this.isExpanded = expanding),
      ),
    ),
  );
}*/