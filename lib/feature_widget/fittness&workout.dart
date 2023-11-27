import 'package:flutter/material.dart';
import 'package:flutter_screens/feature_widget/live_fully.dart';
import 'package:flutter_screens/images/images.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FitnessandWorkout extends StatefulWidget {
  const FitnessandWorkout({Key? key}) : super(key: key);

  @override
  State<FitnessandWorkout> createState() => _FitnessandWorkoutState();
}

class _FitnessandWorkoutState extends State<FitnessandWorkout> {

  final vedioUrl = "https://youtube.com/watch?v=YMx8Bbev6T4";
  late YoutubePlayerController _controller;

  @override
  void initState(){
    final vedioID = YoutubePlayer.convertUrlToId(vedioUrl);
    _controller = YoutubePlayerController(
        initialVideoId: vedioID!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      )
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    bool _isLiked = false;
    late TabController _tabController;
    DateTime now = DateTime.now();
    late String formattedTime = DateFormat('HH:mm:ss').format(now);
    late String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    

    void _changeLikedButton() {
      setState(() {
        _isLiked = !_isLiked;
      });
    }

    return  Scaffold(
      backgroundColor: Color(0xffF0F1F2),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffF0F1F2),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed:(){},),
        title: Text("Fitness & Workouts",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children:  [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,top: 10),
                            child: Text(
                              'Shape Your Body in 45 Days',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Fitness  | Colleen Clendaniel",style: TextStyle(color: Colors.grey,fontSize: 12),),
                        ],
                      ),
                      SizedBox(width: 30.7),
                      Row(
                        children: [
                          Icon(Icons.play_arrow_outlined,color: Colors.grey),
                          Text("10min",style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 5,),
                          Icon(Icons.share,color: Colors.grey,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.grey,size: 16,weight: 5,))
                        ],
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                  SizedBox(
                      height: 160.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red.shade100,
                        ),
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(6.0),
                        width: screenWidth * 90 / 100,
                        child: Row(
                          children: const [
                            SizedBox(
                              height: 130.0,
                              width: 150.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),

                          ],
                        ),
                      )
                  ),

                  //SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children:  [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,top: 10),
                            child: Text(
                              'Shape Your Body in 45 Days',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Fitness  | Colleen Clendaniel",style: TextStyle(color: Colors.grey,fontSize: 12),),
                        ],
                      ),
                      SizedBox(width: 30.7),
                      Row(
                        children: [
                          Icon(Icons.play_arrow_outlined,color: Colors.grey),
                          Text("10min",style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 5,),
                          Icon(Icons.share,color: Colors.grey,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.grey,size: 16,weight: 5,))
                        ],
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                  SizedBox(
                    height: 160.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.red.shade100,
                      ),
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(6.0),
                      width: screenWidth * 90 / 100,
                      child: Row(
                        children: const [
                          SizedBox(
                            height: 130.0,
                            width: 150.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),

                        ],
                      ),
                    )
                  ),

                  //SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children:  [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,top: 10),
                            child: Text(
                              'Shape Your Body in 45 Days',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Fitness  | Colleen Clendaniel",style: TextStyle(color: Colors.grey,fontSize: 12),),
                        ],
                      ),
                      SizedBox(width: 30.7),
                      Row(
                        children: [
                          Icon(Icons.play_arrow_outlined,color: Colors.grey),
                          Text("10min",style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 5,),
                          Icon(Icons.share,color: Colors.grey,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.grey,size: 16,weight: 5,))
                        ],
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                  SizedBox(
                      height: 160.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red.shade100,
                        ),
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(6.0),
                        width: screenWidth * 90 / 100,
                        child: Stack(
                          children: [
                            Row(
                              children:  [
                                Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  height: 130.0,
                                  width: 150.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),

                              ],
                            ),
                          ],
                        ),
                      )
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children:  [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,top: 10),
                            child: Text(
                              'Shape Your Body in 45 Days',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Fitness  | Colleen Clendaniel",style: TextStyle(color: Colors.grey,fontSize: 12),),
                        ],
                      ),
                      SizedBox(width: 30.7),
                      Row(
                        children: [
                          Icon(Icons.play_arrow_outlined,color: Colors.grey),
                          Text("10min",style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 5,),
                          Icon(Icons.share,color: Colors.grey,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.grey,size: 16,weight: 5,))
                        ],
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                  SizedBox(
                      height: 160.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red.shade100,
                        ),
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(6.0),
                        width: screenWidth * 90 / 100,
                        child: Row(
                          children: const [
                            SizedBox(
                              height: 130.0,
                              width: 150.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),

                          ],
                        ),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
