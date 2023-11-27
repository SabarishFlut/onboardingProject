import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter_screens/feature_widget/live_fully.dart';
import 'package:flutter_screens/images/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ProgramsWidget extends StatefulWidget {
  const ProgramsWidget({Key? key}) : super(key: key);

  @override
  State<ProgramsWidget> createState() => _ProgramsWidgetState();
}

class _ProgramsWidgetState extends State<ProgramsWidget> {
  bool _isLiked = false;


  void _changeLikedButton() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }


  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    String formattedTime = DateFormat('HH:mm:ss').format(now);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ScreenUtilInit(builder: (context, child) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.white,
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
                "Programs",
                style: TextStyle(color: Colors.black),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(40.0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.grey.shade300,
                  child: ButtonsTabBar(
                    unselectedBackgroundColor: Colors.transparent,
                    labelSpacing: 10.0,
                    backgroundColor: Colors.grey.shade600,
                    splashColor: Colors.grey.shade600,
                    radius: 30,
                    tabs: [
                      Tab(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 20,
                          width: 74,
                          child: Center(
                              child: Text(
                            "All",
                            style: TextStyle(color: Colors.black),
                          )),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 20,
                          width: 74,
                          child: Center(
                              child: Text("This Month",
                                  style: TextStyle(color: Colors.black))),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 20,
                          width: 74,
                          child: Center(
                              child: Text("This Week",
                                  style: TextStyle(color: Colors.black))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Eating for Optimal Wellness',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      //SizedBox(width: 0.0),
                      Text(
                        ' (12Classes)',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(width: 37.7),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            selectionColor: Colors.grey,
                          )),
                      SizedBox(width: 20.0),
                    ],
                  ),
                  SizedBox(
                    height: 160.0,
                    child: ListView.builder(
                      itemCount: imagesP1.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey.shade100,
                          ),
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(6.0),
                          width: screenWidth * 90 / 100,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 130.0,
                                width: 150.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    imagesP1[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 180.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 122.0,
                                          child: Text(
                                            'How to Shop, Prep & Keep a Healthy Diet',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(8.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              _changeLikedButton();
                                            },
                                            child: _isLiked ? Icon(
                                              Icons.favorite,
                                              color: Colors.redAccent,
                                              size: 18.0,
                                            ):  Icon(
                                              Icons.favorite_border_outlined,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                        // IconButton(
                                        //   onPressed: () {},
                                        //   style: IconButton.styleFrom(
                                        //     // padding:
                                        //     //     const EdgeInsets.all(70.0),
                                        //   ),
                                        //   padding: const EdgeInsets.all(8.0),
                                        //   icon: Icon(
                                        //     Icons.favorite_border_outlined,
                                        //     size: 18.0,
                                        //     color: Colors.grey,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Date',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        //SizedBox(width: 50.0),
                                        Text(
                                          ' ${formattedDate.toString()}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        // Text(
                                        //   'Apr 03, 10:30 AM',
                                        //   style: TextStyle(
                                        //       fontSize: 10,
                                        //       fontWeight: FontWeight.bold),
                                        // ),
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
                                          'Time\nRemainig',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(
                                          ' ${formattedTime.toString()}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black54),
                                        ),
                                        // Text(
                                        //   '78hr3min:20sec',
                                        //   style: TextStyle(fontSize: 9),
                                        // ),
                                        SizedBox(width: 20.0),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Divider(
                                      thickness: 0.5,
                                      color: Colors.grey,
                                      indent: 5.0,
                                      endIndent: 5.0,
                                    ),
                                    SizedBox(
                                      height: 24.0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              // SizedBox(
                                              //   height: 22.0,
                                              //   width: 22.0,
                                              //   child: ClipRRect(
                                              //     borderRadius:
                                              //     BorderRadius.circular(50.0),
                                              //     child: Image.network(
                                              //       'https://picsum.photos/250?image=9',
                                              //       fit: BoxFit.cover,
                                              //     ),
                                              //   ),
                                              // ),
                                              // SizedBox(
                                              //   height: 22.0,
                                              //   width: 22.0,
                                              //   child: ClipRRect(
                                              //     borderRadius:
                                              //     BorderRadius.circular(50.0),
                                              //     child: Image.network(
                                              //       'https://picsum.photos/250?image=9',
                                              //       fit: BoxFit.cover,
                                              //     ),
                                              //   ),
                                              // ),
                                              Container(
                                                  width: 80.0,
                                                  height: 40.0,
                                                  child: ListView.builder(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount: 10,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Align(
                                                          widthFactor: 0.4,
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                                Colors.white,
                                                            child: CircleAvatar(
                                                              radius: 18,
                                                              backgroundImage:
                                                                  NetworkImage(
                                                                      'https://picsum.photos/250?image=9'), // Provide your custom image
                                                            ),
                                                          ),
                                                        );
                                                      }))
                                              // ClipRRect(
                                              //   borderRadius: BorderRadius.all(
                                              //       Radius.circular(30)),
                                              //   child: CircleAvatar(
                                              //     radius: 10,
                                              //     child: Image.network(
                                              //         'https://picsum.photos/250?image=9',
                                              //         fit: BoxFit.fill),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                shape: StadiumBorder(),
                                                backgroundColor:
                                                    Colors.blue.shade900),
                                            child: Text(
                                              'View',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
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

                  //SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Exercise for Functional Health',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      //SizedBox(width: 0.0),
                      Text(
                        ' (10Classes)',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 5))),
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              decoration: TextDecoration.underline,
                            ),
                            selectionColor: Colors.grey,
                          )),
                      SizedBox(width: 20.0),
                    ],
                  ),
                  SizedBox(
                    height: 160.0,
                    child: ListView.builder(
                      itemCount: imagesP2.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey.shade100,
                          ),
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(6.0),
                          width: screenWidth * 90 / 100,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 130.0,
                                width: 150.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    //'https://picsum.photos/250?image=9',
                                    imagesP2[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 180.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 122.0,
                                          child: Text(
                                            'How to Shop, Prep & Keep a Healthy Diet',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(8.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.favorite_border_outlined,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                        // IconButton(
                                        //   onPressed: () {},
                                        //   style: IconButton.styleFrom(
                                        //     // padding:
                                        //     //     const EdgeInsets.all(70.0),
                                        //   ),
                                        //   padding: const EdgeInsets.all(8.0),
                                        //   icon: Icon(
                                        //     Icons.favorite_border_outlined,
                                        //     size: 18.0,
                                        //     color: Colors.grey,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Date',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        //SizedBox(width: 50.0),
                                        Text(
                                          ' ${formattedDate.toString()}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        // Text(
                                        //   'Apr 03, 10:30 AM',
                                        //   style: TextStyle(
                                        //       fontSize: 10,
                                        //       fontWeight: FontWeight.bold),
                                        // ),
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
                                          'Time\nRemainig',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(
                                          ' ${formattedTime.toString()}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black54),
                                        ),
                                        // Text(
                                        //   '78hr3min:20sec',
                                        //   style: TextStyle(fontSize: 9),
                                        // ),
                                        SizedBox(width: 20.0),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Divider(
                                      thickness: 0.5,
                                      color: Colors.grey,
                                      indent: 5.0,
                                      endIndent: 5.0,
                                    ),
                                    SizedBox(
                                      height: 24.0,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              // SizedBox(
                                              //   height: 22.0,
                                              //   width: 22.0,
                                              //   child: ClipRRect(
                                              //     borderRadius:
                                              //     BorderRadius.circular(50.0),
                                              //     child: Image.network(
                                              //       'https://picsum.photos/250?image=9',
                                              //       fit: BoxFit.cover,
                                              //     ),
                                              //   ),
                                              // ),
                                              // SizedBox(
                                              //   height: 22.0,
                                              //   width: 22.0,
                                              //   child: ClipRRect(
                                              //     borderRadius:
                                              //     BorderRadius.circular(50.0),
                                              //     child: Image.network(
                                              //       'https://picsum.photos/250?image=9',
                                              //       fit: BoxFit.cover,
                                              //     ),
                                              //   ),
                                              // ),
                                              Container(
                                                  width: 80.0,
                                                  height: 40.0,
                                                  child: ListView.builder(
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      itemCount: 4,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Align(
                                                          widthFactor: 0.4,
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                            Colors.white,
                                                            child: CircleAvatar(
                                                              radius: 18,

                                                              backgroundImage:
                                                              NetworkImage(
                                                                  'https://picsum.photos/250?image=9'), // Provide your custom image
                                                            ),
                                                          ),
                                                        );
                                                      }))
                                              // ClipRRect(
                                              //   borderRadius: BorderRadius.all(
                                              //       Radius.circular(30)),
                                              //   child: CircleAvatar(
                                              //     radius: 10,
                                              //     child: Image.network(
                                              //         'https://picsum.photos/250?image=9',
                                              //         fit: BoxFit.fill),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                shape: StadiumBorder(),
                                                backgroundColor:
                                                Colors.blue.shade900),
                                            child: Text(
                                              'View',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
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

                  //SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Live Fully',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      //SizedBox(width: 0.0),
                      Text(
                        ' (12Classes)',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(width: 36.0),
                      TextButton(
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              decoration: TextDecoration.underline,
                            ),
                            selectionColor: Colors.grey,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => LiveFully()));
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 160.0,
                    child: ListView.builder(
                      itemCount: imagesP3.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey.shade100,
                          ),
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(6.0),
                          width: screenWidth * 90 / 100,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 130.0,
                                width: 150.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    //'https://picsum.photos/250?image=9',
                                    imagesP3[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 180.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 122.0,
                                          child: Text(
                                            'How to Shop, Prep & Keep a Healthy Diet',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(8.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.favorite_border_outlined,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                        // IconButton(
                                        //   onPressed: () {},
                                        //   style: IconButton.styleFrom(
                                        //     // padding:
                                        //     //     const EdgeInsets.all(70.0),
                                        //   ),
                                        //   padding: const EdgeInsets.all(8.0),
                                        //   icon: Icon(
                                        //     Icons.favorite_border_outlined,
                                        //     size: 18.0,
                                        //     color: Colors.grey,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Date',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        //SizedBox(width: 50.0),
                                        Text(
                                          ' ${formattedDate.toString()}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        // Text(
                                        //   'Apr 03, 10:30 AM',
                                        //   style: TextStyle(
                                        //       fontSize: 10,
                                        //       fontWeight: FontWeight.bold),
                                        // ),
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
                                          'Time\nRemainig',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(
                                          ' ${formattedTime.toString()}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black54),
                                        ),
                                        // Text(
                                        //   '78hr3min:20sec',
                                        //   style: TextStyle(fontSize: 9),
                                        // ),
                                        SizedBox(width: 20.0),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Divider(
                                      thickness: 0.5,
                                      color: Colors.grey,
                                      indent: 5.0,
                                      endIndent: 5.0,
                                    ),
                                    SizedBox(
                                      height: 24.0,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              // SizedBox(
                                              //   height: 22.0,
                                              //   width: 22.0,
                                              //   child: ClipRRect(
                                              //     borderRadius:
                                              //     BorderRadius.circular(50.0),
                                              //     child: Image.network(
                                              //       'https://picsum.photos/250?image=9',
                                              //       fit: BoxFit.cover,
                                              //     ),
                                              //   ),
                                              // ),
                                              // SizedBox(
                                              //   height: 22.0,
                                              //   width: 22.0,
                                              //   child: ClipRRect(
                                              //     borderRadius:
                                              //     BorderRadius.circular(50.0),
                                              //     child: Image.network(
                                              //       'https://picsum.photos/250?image=9',
                                              //       fit: BoxFit.cover,
                                              //     ),
                                              //   ),
                                              // ),
                                              Container(
                                                  width: 80.0,
                                                  height: 40.0,
                                                  child: ListView.builder(
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      itemCount: 4,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Align(
                                                          widthFactor: 0.4,
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                            Colors.white,
                                                            child: CircleAvatar(
                                                              radius: 18,

                                                              backgroundImage:
                                                              NetworkImage(
                                                                  'https://picsum.photos/250?image=9'), // Provide your custom image
                                                            ),
                                                          ),
                                                        );
                                                      }))
                                              // ClipRRect(
                                              //   borderRadius: BorderRadius.all(
                                              //       Radius.circular(30)),
                                              //   child: CircleAvatar(
                                              //     radius: 10,
                                              //     child: Image.network(
                                              //         'https://picsum.photos/250?image=9',
                                              //         fit: BoxFit.fill),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                shape: StadiumBorder(),
                                                backgroundColor:
                                                Colors.blue.shade900),
                                            child: Text(
                                              'View',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Mini Med School',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      //SizedBox(width: 0.0),
                      Text(
                        ' (14Classes)',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(width: 36.0),
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
                  SizedBox(
                    height: 160.0,
                    child: ListView.builder(
                      itemCount: imagesP3.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey.shade100,
                          ),
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(6.0),
                          width: screenWidth * 90 / 100,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 130.0,
                                width: 150.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    //'https://picsum.photos/250?image=9',
                                    imagesP3[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 180.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 122.0,
                                          child: Text(
                                            'How to Shop, Prep & Keep a Healthy Diet',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(8.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.favorite_border_outlined,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                        // IconButton(
                                        //   onPressed: () {},
                                        //   style: IconButton.styleFrom(
                                        //     // padding:
                                        //     //     const EdgeInsets.all(70.0),
                                        //   ),
                                        //   padding: const EdgeInsets.all(8.0),
                                        //   icon: Icon(
                                        //     Icons.favorite_border_outlined,
                                        //     size: 18.0,
                                        //     color: Colors.grey,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Date',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        //SizedBox(width: 50.0),
                                        Text(
                                          ' ${formattedDate.toString()}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        // Text(
                                        //   'Apr 03, 10:30 AM',
                                        //   style: TextStyle(
                                        //       fontSize: 10,
                                        //       fontWeight: FontWeight.bold),
                                        // ),
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
                                          'Time\nRemainig',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(
                                          ' ${formattedTime.toString()}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black54),
                                        ),
                                        // Text(
                                        //   '78hr3min:20sec',
                                        //   style: TextStyle(fontSize: 9),
                                        // ),
                                        SizedBox(width: 20.0),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Divider(
                                      thickness: 0.5,
                                      color: Colors.grey,
                                      indent: 5.0,
                                      endIndent: 5.0,
                                    ),
                                    SizedBox(
                                      height: 24.0,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              // SizedBox(
                                              //   height: 22.0,
                                              //   width: 22.0,
                                              //   child: ClipRRect(
                                              //     borderRadius:
                                              //     BorderRadius.circular(50.0),
                                              //     child: Image.network(
                                              //       'https://picsum.photos/250?image=9',
                                              //       fit: BoxFit.cover,
                                              //     ),
                                              //   ),
                                              // ),
                                              // SizedBox(
                                              //   height: 22.0,
                                              //   width: 22.0,
                                              //   child: ClipRRect(
                                              //     borderRadius:
                                              //     BorderRadius.circular(50.0),
                                              //     child: Image.network(
                                              //       'https://picsum.photos/250?image=9',
                                              //       fit: BoxFit.cover,
                                              //     ),
                                              //   ),
                                              // ),
                                              Container(
                                                  width: 80.0,
                                                  height: 40.0,
                                                  child: ListView.builder(
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      itemCount: 4,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Align(
                                                          widthFactor: 0.4,
                                                          child: CircleAvatar(
                                                            backgroundColor:
                                                            Colors.white,
                                                            child: CircleAvatar(
                                                              radius: 18,

                                                              backgroundImage:
                                                              NetworkImage(
                                                                  'https://picsum.photos/250?image=9'), // Provide your custom image
                                                            ),
                                                          ),
                                                        );
                                                      }))
                                              // ClipRRect(
                                              //   borderRadius: BorderRadius.all(
                                              //       Radius.circular(30)),
                                              //   child: CircleAvatar(
                                              //     radius: 10,
                                              //     child: Image.network(
                                              //         'https://picsum.photos/250?image=9',
                                              //         fit: BoxFit.fill),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                shape: StadiumBorder(),
                                                backgroundColor:
                                                Colors.blue.shade900),
                                            child: Text(
                                              'View',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
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
            )),
      );
    });
  }
}
