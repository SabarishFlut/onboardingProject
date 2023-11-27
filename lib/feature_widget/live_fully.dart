import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

class LiveFully extends StatefulWidget {
  const LiveFully({Key? key}) : super(key: key);

  @override
  State<LiveFully> createState() => _LiveFullyState();
}

class _LiveFullyState extends State<LiveFully> with TickerProviderStateMixin {
  bool _isLiked = false;
  late TabController _tabController;
  DateTime now = DateTime.now();
  late String formattedTime = DateFormat('HH:mm:ss').format(now);
  late String formattedDate = DateFormat('yyyy-MM-dd').format(now);

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    formattedDate = DateFormat('yyyy-MM-dd').format(now);
    formattedTime = DateFormat('HH:mm:ss').format(now);
    super.initState();
  }

  void _changeLikedButton() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
         children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.25),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1437859276/photo/outdoor-online-and-senior-couple-using-a-tablet-for-video-call-internet-and-social-media-old.webp?b=1&s=170667a&w=0&k=20&c=Fs0g79hyUb9coEI7OKyyzSiaA5cUOhsihPS298omwtY="),
                      fit: BoxFit.fill,
                    )),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                color: Colors.transparent,
               child: IconButton(onPressed: (){
                 Navigator.pop(context);
               },icon: Icon(CupertinoIcons.back,color: Colors.black,size: 20,),)),
              Padding(
                padding: EdgeInsets.only(
                  top: 210,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      height: 90,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                              child: Text(
                            "Yoga For Aging Body",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                          SizedBox(
                            height: 8.0,
                          ),
                          Flexible(
                              child: Text(
                            "Stress impacts health by affecting biology and behavior. Join us to learn ways to reduce stress & improve health in our living fully series.",
                            style: TextStyle(color: Colors.white),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
             ]
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Classes',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Vedios',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Materials',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: [
                _liveFullyWidget(),
                _liveFullyWidget(),
                _liveFullyWidget(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _liveFullyWidget() {
    return Container(
      color: Color(0xffF0F1F2),
      child: ListView.builder(
        padding:  EdgeInsets.all(10.0),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, int) {
            return videosCardWidget();
          }),
    );
  }

  Container videosCardWidget() {
    return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16.0,top: 10.0),
                    child: Text(
                      'Learn to Meditate for Wellness',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        _changeLikedButton();
                      },
                      child: _isLiked
                          ? Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                              size: 18.0,
                            )
                          : Icon(
                              Icons.favorite_border_outlined,
                              size: 18.0,
                            ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 8,color: Colors.grey),
                    ),
                    SizedBox(width: 200,),
                    Text(
                      'Time Remaining',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.grey),
                    ),
                    SizedBox(width: 0.02,)
                  ],
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${formattedDate},${formattedTime}',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(width: 100,),
                    Text(
                      ' ${formattedTime.toString()}',
                      style: TextStyle(fontSize: 10, color: Colors.black54),
                    ),
                    // Text(
                    //   '78hr3min:20sec',
                    //   style: TextStyle(fontSize: 9),
                    // ),
                    SizedBox(width: 20.0),
                  ],
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Column(
                children:  [
                  Padding(
                    padding:  EdgeInsets.only(right: 270.0),
                    child: Text(
                      'About the Class',
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 14.0),
                    // child: Text(
                    //   'The power to live more fully lies within your mind.Come and unlock the power \nof meditation for your life! Join us as we explore and experience how meditation can impact your health and wellness... view more',
                    //   style:
                    //   TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),
                    // ),
                    child: ReadMoreText(
                     "The power to live more fully lies within your mind. Come and unlock the power of meditation for your life! Join us as we explore and experience how meditation can impact your health and wellness."
                         "\nAbout the Living Fully series\n Did you know that stress directly impacts our health? Stress affects the biological processes integral to the development of disease and drives the use of behaviors that can put you at a higher risk for poor health outcomes. Join us for this series as we explore ways to decrease your stress and improve your health!.\n"
                         "\nAbout the living fully series\n\n"
                         "Did you know that stress directly impacts our health? Stress affects the biological processes integral to the development of disease and drives the use of behaviors that can put you at a higher risk for poor health outcomes. Join us for this series as we explore ways to decrease your stress and improve your health!\n."
                          "\nSee series schedule",
                      style: TextStyle(fontSize: 10),
                      trimLines: 3,
                      colorClickableText: Colors.indigo,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'view more',
                      trimExpandedText: ' Show less',
                      moreStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.indigo),
                    ),
                  ),
                ],
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 14.0,bottom: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              width: 80.0,
                              height: 40.0,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Align(
                                      widthFactor: 0.4,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundImage: NetworkImage(
                                              'https://picsum.photos/250?image=9'), // Provide your custom image
                                        ),
                                      ),
                                    );
                                  }))
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 14.0,bottom: 8),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.blue.shade900),
                        child: Text(
                          'View',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
  }


}
