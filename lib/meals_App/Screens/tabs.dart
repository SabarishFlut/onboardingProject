import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screens/meals_App/Screens/categories.dart';
import 'package:flutter_screens/meals_App/Screens/filters.dart';
import 'package:flutter_screens/meals_App/Screens/meal_details.dart';
import 'package:flutter_screens/meals_App/Screens/meals.dart';
import 'package:flutter_screens/meals_App/Widgets/main_drawer.dart';
import 'package:flutter_screens/meals_App/data/dummy_Data.dart';
import 'package:flutter_screens/meals_App/models/meal.dart';
import 'package:flutter_screens/meals_App/providers/favourites_Provider.dart';
import 'package:flutter_screens/meals_App/providers/filter_Provider.dart';


 const kInintialFilters = {
   Filter.glutenFree : false,
   Filter.lactoseFree:false,
   Filter.vegetarian : false,
   Filter.vegan : false,
 };

class TabScreen extends ConsumerStatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends ConsumerState<TabScreen> {
  int _selectedIndex = 0;

  //final List<Meal> _favourites = [];
  //Map<Filter , bool> _selectedFilters = kInintialFilters;

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  // void _toggleMealFavourite(Meal meal) {
  //   final isExisting = _favourites.contains(meal);
  //   if (isExisting) {
  //     setState(() {
  //       _favourites.remove(meal);
  //     });
  //     _showInfoMessage('Message is no longer favourite');
  //   } else {
  //     setState(() {
  //       _favourites.add(meal);
  //       _showInfoMessage('Marked as favourite');
  //     });
  //   }
  // }


  void _setScreen(String identifier) async{
    Navigator.of(context).pop();
     {
      //Navigator.of(context).pop();
       await Navigator.of(context).push<Map<Filter,bool>>(MaterialPageRoute(
        builder: (ctx) => const FilterScreen(),
      ));
      // setState(() {
      //   _selectedFilters = result ?? kInintialFilters;
      //   print("${result}**50");
      // });
    }
    // } else {
    //   Navigator.of(context).pop();
    //   print("Pop");
    // }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final availableMeal = ref.watch(favouriteMealsProvider);

    Widget activePage = CategoriesScreen(
      availableMeals: availableMeal,
      //onToggleFavourite: _toggleMealFavourite,
    );

    var activePageTitle = 'Categories';

    if (_selectedIndex == 1) {
      final favouriteMeals = ref.watch(favouriteMealsProvider);
      activePage = MealsScreen(title: "Favourites",
        meals: favouriteMeals,
        //onToggleFavourite: _toggleMealFavourite,
      );
      activePageTitle = 'Yours Favourites';
      print("${_selectedIndex}**108");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _selectPage;
        }, currentIndex: _selectedIndex, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.set_meal), label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites'),
      ],
      ),
    );
  }
}
