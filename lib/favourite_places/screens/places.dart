import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screens/favourite_places/provider/user_places.dart';
import 'package:flutter_screens/favourite_places/widgets/places_list.dart';
import 'package:flutter_screens/favourite_places/screens/add_place.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Places"),
        actions: [
          IconButton(
            onPressed: () {
              print("${userPlaces}**56");
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => AddPlaceScreen()),
              );
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: PlaceList(
        place: userPlaces,
      ),
    );
  }
}

