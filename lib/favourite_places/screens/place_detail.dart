import 'package:flutter/material.dart';
import 'package:flutter_screens/favourite_places/models/places.dart';

class PlaceDetails extends StatelessWidget {
   PlaceDetails({Key? key,required this.place}) : super(key: key);

  final Place place;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Stack(
        children: [
          Image.file(
            place.image,
            fit: BoxFit.cover,
          )
        ],
      ),
      // body: Text(place.title,style: TextStyle(color: Colors.green),),
    );
  }
}
