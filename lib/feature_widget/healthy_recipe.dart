import 'package:flutter/material.dart';

class HealthyRecipe extends StatefulWidget {
  const HealthyRecipe({Key? key}) : super(key: key);

  @override
  State<HealthyRecipe> createState() => _HealthyRecipeState();
}

class _HealthyRecipeState extends State<HealthyRecipe> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: sh * 30 / 100,
            width: double.infinity,
            child: Stack(
                children: [
              Container(
                height: sh * 30 / 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.25),
                    image: DecorationImage(
                      image: NetworkImage(
                      "https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dmVnJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                      fit: BoxFit.fill,
                    )),
              ),
            ]
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: Colors.red,
            child: Center(child: Text("Quinoa Salad with Vegetables",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          ),
          Container(
            color: Colors.green,
            height: 50,
            width: double.infinity,
            child: Padding(
              padding:  EdgeInsets.only(left: 30,right: 150,),
              child: Row(
                children: [
                  Icon(Icons.access_time),
                  Text("1Hr10min",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 40,),
                  Icon(Icons.thumb_up_alt_outlined),
                  Text(" 200",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                  SizedBox(width: 50,),
                  Icon(Icons.share),
                  Text("50 Shares")
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 200,top: 10),
            child: Text("Nutrition Profile:",style: TextStyle(color: Colors.grey,fontSize: 18),),
          ),
          Container(
            color: Colors.yellow,
            height: 200,
            width: 400,
            child: Container(height: 100,
                width: 100,color: Colors.blueGrey,
                child: ListofProfile()),
          ),
          Divider(height: 10,color: Colors.black,)
        ],
      ),
    );
  }
}


class ListofProfile extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ListofProfile> {
  List<String> str = [
    "Heart Healthy",
    "Fresh Herbs",
    "Sodium",
    ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          padding: EdgeInsets.only(right: 10,left: 20,bottom: 10,top: 10),
          child: Column(
            children: str.map((strone){
              return Row(
                  children:[
                    Text("\u2022", style: TextStyle(fontSize: 14),), //bullet text
                    SizedBox(width: 8,), //space between bullet and text
                    Expanded(
                      child:Text(strone, style: TextStyle(fontSize: 10),), //text
                    )
                  ]
              );
            }).toList(),
          ),
        )
    );
  }
}

