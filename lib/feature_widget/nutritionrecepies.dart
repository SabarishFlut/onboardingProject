import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../images/images.dart';

class NutritionWidget extends StatefulWidget {
  const NutritionWidget({Key? key}) : super(key: key);

  @override
  State<NutritionWidget> createState() => _NutritionWidgetState();
}


class _NutritionWidgetState extends State<NutritionWidget> {


  @override
  Widget build(BuildContext context) {

    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    String formattedTime = DateFormat('HH:mm:ss').format(now);
    double screenWidth = MediaQuery.of(context).size.width;

    return ScreenUtilInit(builder: (context, child) {
      return Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.2,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            title: Text(
              "Nutrition & Recepies",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                SizedBox(
                  height: 180.0,
                  child: ListView.builder(
                    itemCount: imagesP1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(6.0),
                        width: screenWidth * 90 / 100,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 150.0,
                              height: 130.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  imagesN1[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                              height: 30.0,
                            ),
                            Container(
                              width: 180.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 36,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 150.0,
                                        child: Text(
                                          'Healthy Eating',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Dishes',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      //SizedBox(width: 50.0),
                                      Text(
                                        '12',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Time',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      Text(
                                        '1-2 hrs',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Best for',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      SizedBox(width: 6.0,height: 5,),
                                      Text(
                                        ' Diabetic, insomnia, HighBP \n Weight Loss',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.0,),
                SizedBox(
                  height: 180.0,
                  child: ListView.builder(
                    itemCount: imagesP1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(6.0),
                        width: screenWidth * 90 / 100,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 150.0,
                              height: 130.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  imagesN2[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                              height: 30.0,
                            ),
                            Container(
                              width: 180.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 36,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 150.0,
                                        child: Text(
                                          'Baking and Desserts',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Dishes',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      //SizedBox(width: 50.0),
                                      Text(
                                        '20',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Time',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      Text(
                                        '40-50 min',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Best for',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      SizedBox(width: 4.0,height: 5,),
                                      Text(
                                        ' Diabetic,insomnia',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  height: 180.0,
                  child: ListView.builder(
                    itemCount: imagesP1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(6.0),
                        width: screenWidth * 90 / 100,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 150.0,
                              height: 130,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  imagesN4[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                              height: 30.0,
                            ),
                            Container(
                              width: 180.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 36,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 150.0,
                                        child: Text(
                                          'Vegen and Vegitarian',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Dishes',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      //SizedBox(width: 50.0),
                                      Text(
                                        '20',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Time',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      Text(
                                        '45min - 1hr',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Best for',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      SizedBox(width: 6.0,height: 5,),
                                      Text(
                                        ' Diabetic, insomnia, HighBP \n Weight Loss',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 180.0,
                  child: ListView.builder(
                    itemCount: imagesP1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(6.0),
                        width: screenWidth * 90 / 100,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 150.0,
                              height: 130,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  imagesN5[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                              height: 30.0,
                            ),
                            Container(
                              width: 180.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 30,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 150.0,
                                        child: Text(
                                          'Quick and easy',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Dishes',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      //SizedBox(width: 50.0),
                                      Text(
                                        '30',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Time',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      Text(
                                        '10min - 20min',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Best for',
                                        style: TextStyle(fontSize: 14,color: Colors.black54),
                                      ),
                                      SizedBox(width: 6.0,height: 5,),
                                      Text(
                                        ' Diabetic, insomnia, HighBP \n Weight Loss',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.black),
                                      ),
                                      SizedBox(width: 20.0),
                                    ],
                                  ),
                                ],
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
          ));
    });
  }
}
// 203.22 , 30.81 , 25.21 , 176.11 , 48.150 , 12.33, 202.81 , 8.04 , 40.480 , 5.89 , 29.56,4,29.11 , 10.280 ,31.150,6.970,4.15,7.86,8.170,2,14,37.75,48.4 = 952.89
//
// 7.75 , 42.96 , 15.42 , 7.94 , 149.31 = 233.38
//
// 1186.27
