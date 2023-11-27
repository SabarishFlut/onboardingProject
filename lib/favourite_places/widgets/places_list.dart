import 'package:flutter/material.dart';
import 'package:flutter_screens/favourite_places/models/places.dart';
import 'package:flutter_screens/favourite_places/screens/place_detail.dart';

class PlaceList extends StatelessWidget {
  PlaceList({required this.place, Key? key}) : super(key: key);
  List<Place> place;

  @override
  Widget build(BuildContext context) {
    if (place.isEmpty) {
      return Center(
        child: Text("No Places added yet",style: TextStyle(color: Colors.white),),
      );
    }
    return ListView.builder(
        itemCount: place.length,
        itemBuilder: (ctx, index) => ListTile(
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: FileImage(place[index].image!),
            
          ),
              title: Text(
                place[index].title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.secondary),
              ),
          onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => PlaceDetails(place: place[index],)));
          },
            ),
    );
  }
}
