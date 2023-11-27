import 'package:flutter/material.dart';
import 'package:flutter_screens/meals_App/Screens/meals.dart';
import 'package:flutter_screens/meals_App/Widgets/category_grid_item.dart';
import 'package:flutter_screens/meals_App/data/dummy_Data.dart';
import 'package:flutter_screens/meals_App/models/category.dart';
import 'package:flutter_screens/meals_App/models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key,  required this.availableMeals})
      : super(key: key);

  //final void Function(Meal meal) onToggleFavourite;
  final List<Meal> availableMeals;

  void _selectedCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealsScreen(
              title: category.title,
              meals: filteredMeals,
              //onToggleFavourite: (Meal meal) {},
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Your Category"),
      ),
      body: GridView(
        padding: EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          for (final category in availableCategories)
            // CategoriesScreen(availableMeals: [],),
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectedCategory(context, category);
              },
            )
        ],
      ),
    );
  }
}
