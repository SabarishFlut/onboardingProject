import 'package:flutter/material.dart';
import '../images/images.dart';

class HealthyWidget extends StatefulWidget {
  const HealthyWidget({Key? key}) : super(key: key);

  @override
  State<HealthyWidget> createState() => _HealthyWidgetState();
}

class _HealthyWidgetState extends State<HealthyWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: sh * 30 / 100,
              width: double.infinity,
              child: Stack(children: [
                Container(
                  height: sh * 30 / 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.25),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1600891964599-f61ba0e24092?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudCUyMGZvb2R8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                        fit: BoxFit.fill,
                      )),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_back_ios)),
                          Text(
                            "Healthy Eating",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          SizedBox(),
                          SizedBox()
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black54,
                                  child: Text("6"),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text("Most Liked"),
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black54,
                                  child: Text("8"),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text("Top Rated"),
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black54,
                                  child: Text("120"),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text("Total views"),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              indicatorWeight: 3,
              indicator:  UnderlineTabIndicator(
                 borderSide: BorderSide(width: 4.0),
              ),
              tabs: [
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Vedios',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Dishes',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Recipe Material',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                healthycontainer(sh, sw),
                healthycontainer(sh, sw),
                healthycontainer(sh, sw),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget healthycontainer(double sh, double sw) {
    return Container(
      color: Color(0xffF0F1F2),
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: 10,
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            constraints:
                BoxConstraints(maxWidth: sw, maxHeight: sh * 20 / 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            margin: EdgeInsets.all(4.0),
            padding: EdgeInsets.all(6.0),
            //width: screenWidth * 90 / 100,
            child: Row(
              children: [
                SizedBox(
                  height: 130.0,
                  width: 150.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      //'https://picsum.photos/250?image=9',
                      imageN7[0],
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
                      Container(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 174.0,
                            child: Text(
                              'Chicken and waffles',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 18,
                                    )),
                                Text("50")
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.access_time,
                                      size: 18,
                                    )),
                                Text("50")
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    padding: EdgeInsets.all(0.0),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border_outlined,
                                      size: 18,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                        indent: 5.0,
                        endIndent: 5.0,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Ingredients",
                        style: TextStyle(
                            fontSize: 10, color: Colors.grey[500]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Flexible(
                          child: Text(
                        "500gms Chicken, Sugar, 10 Waff,"
                        "50gms Cheese, Honey",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
