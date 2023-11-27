import 'package:flutter/material.dart';

class YogaforAge extends StatefulWidget {
  const YogaforAge({Key? key}) : super(key: key);

  @override
  State<YogaforAge> createState() => _YogaforAgeState();
}

class _YogaforAgeState extends State<YogaforAge> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children: [
                  Container(
                    height : 250 , width : double.infinity ,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.25),
                        image: DecorationImage(
                          image: NetworkImage("https://media.istockphoto.com/id/1456372142/photo/yoga-class.webp?b=1&s=170667a&w=0&k=20&c=Zt8dai0L7Qt4RKLNeczr8jC6eSRRDL1RrlyS8Y9d-2E="),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 200,left: 20,),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.green[100],
                          ),
                          height: 90,
                          width: 340,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(child: Text("Yoga For Aging Body",style: TextStyle(color: Colors.black,fontSize: 16),)),
                              SizedBox(height: 8.0,),
                              Flexible(child: Text("Stress impacts health by affecting biology and behavior. Join us to learn ways to reduce stress & improve health in our living fully series.",style: TextStyle(color: Colors.grey),)),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[200],
                              ),
                              height: 320,
                              width: 340,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.transparent,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.all(14.0),
                                              child: Text("Series",style: TextStyle(fontSize: 14),),
                                            ),
                                            SizedBox(width: 180,),
                                            Padding(
                                              padding:  EdgeInsets.only(right: 30),
                                              child: Text("10Apr 2023",style: TextStyle(fontSize: 12),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.transparent,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 18),
                                              child: Text("Introduction for Yoga",style: TextStyle(fontSize: 18,),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.grey,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("Apr",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("10.00AM",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 10),
                                              child: Text("What is Yoga",style: TextStyle(fontSize: 14),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.transparent,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("Apr",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("10.00AM",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 10),
                                              child: Text("What is Yoga",style: TextStyle(fontSize: 14),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.grey,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("Apr",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("10.00AM",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 10),
                                              child: Text("What is Yoga",style: TextStyle(fontSize: 14),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.transparent,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("Apr",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("10.00AM",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 10),
                                              child: Text("What is Yoga",style: TextStyle(fontSize: 14),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                  Divider(thickness: 2,color: Colors.black,),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 30,top: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 70,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 3,
                                              itemBuilder: (context, index) {
                                                return Align(
                                                  widthFactor: 0.4,
                                                  child: CircleAvatar(
                                                    backgroundColor: Colors.white,
                                                    child: CircleAvatar(
                                                      radius: 30,
                                                      backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                                                    ),
                                                  ),
                                                );
                                              }
                                              ),
                                        ),
                                        Padding(padding: EdgeInsets.only(bottom: 26,left: 140)),
                                        Container(
                                          child:  ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                shape: StadiumBorder(),
                                                backgroundColor:
                                                Colors.blue.shade900),
                                            child: Text(
                                              'Enroll',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[200],
                              ),
                              height: 320,
                              width: 340,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.transparent,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.all(14.0),
                                              child: Text("Series",style: TextStyle(fontSize: 14),),
                                            ),
                                            SizedBox(width: 180,),
                                            Padding(
                                              padding:  EdgeInsets.only(right: 30),
                                              child: Text("10Apr 2023",style: TextStyle(fontSize: 12),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.transparent,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 18),
                                              child: Text("Introduction for Yoga",style: TextStyle(fontSize: 18,),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.grey,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("Apr",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("10.00AM",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 10),
                                              child: Text("What is Yoga",style: TextStyle(fontSize: 14),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.transparent,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("Apr",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("10.00AM",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 10),
                                              child: Text("What is Yoga",style: TextStyle(fontSize: 14),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.grey,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("Apr",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("10.00AM",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 10),
                                              child: Text("What is Yoga",style: TextStyle(fontSize: 14),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.transparent,
                                        height: 40,
                                        width: 340,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("Apr",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 10.0,bottom: 10),
                                              child: Text("10.00AM",style: TextStyle(fontSize: 12),),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 14.0,bottom: 10),
                                              child: Text("What is Yoga",style: TextStyle(fontSize: 14),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                  Divider(thickness: 2,color: Colors.black,),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 30,top: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 70,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 3,
                                              itemBuilder: (context, index) {
                                                return Align(
                                                  widthFactor: 0.4,
                                                  child: CircleAvatar(
                                                    backgroundColor: Colors.white,
                                                    child: CircleAvatar(
                                                      radius: 30,
                                                      backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                                                    ),
                                                  ),
                                                );
                                              }
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(bottom: 26,left: 140)),
                                        Container(
                                          child:  ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                shape: StadiumBorder(),
                                                backgroundColor:
                                                Colors.blue.shade900),
                                            child: Text(
                                              'Enroll',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ],
                    ),
                  )
                ]
            ),
          ],
        ),
      ),
    );
  }
}
