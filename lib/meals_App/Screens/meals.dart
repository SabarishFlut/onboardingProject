import 'package:flutter/material.dart';
import 'package:flutter_screens/meals_App/Screens/meal_details.dart';
import 'package:flutter_screens/meals_App/Widgets/meal_Item.dart';
import 'package:flutter_screens/meals_App/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({Key? key, required this.title, required this.meals,})
      : super(key: key);

  final String ? title;
  final List<Meal> meals;
  //final void Function(Meal meal) onToggleFavourite;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => MealDetails(meal: meal, //onToggleFavourite: (Meal meal) { },
    )));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemBuilder: (ctx, index) => Text(meals[index].title));
    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Ohh..Nothing Here'),
            SizedBox(
              height: 16,
            ),
            Text("Try Selecting a different category")
          ],
        ),
      );
    }
    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
          meal: meals[index],
          onSelectMeal: (BuildContext context, Meal meal) {
            selectMeal(context, meals[index]);
          },
        ),
      );
    }
    if(title == null){
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}

// class MealsScreen extends StatelessWidget {
//   const MealsScreen({Key? key, required this.title, required this.meals})
//       : super(key: key);
//
//   final String title;
//   final List<Meal> meals;
//
//   void selectMeal(BuildContext context, Meal meal) {
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (ctx) => MealDetails(meal: meal)));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Widget content = ListView.builder(
//         itemBuilder: (ctx, index) => Text(meals[index].title));
//     if(meals.isEmpty){
//       content = Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Ohh..Nothing Here'),
//             SizedBox(height: 16,),
//             Text("Try Selecting a different category")
//           ],
//         ),
//       );
//     }
//     if(meals.isNotEmpty){
//       content = ListView.builder(
//         itemCount: meals.length,
//         // itemBuilder: (ctx, index) => MealItem(
//         //   meal: meals[index],
//         //   onSelectMeal: (BuildContext ctx) {
//         //     selectMeal(ctx, meals[index]); // Pass the context and meal
//         //   },
//         // ),);
//           itemBuilder: (ctx, index) => MealItem(meal: meals[index],onSelectMeal: (meal){
//             selectMeal(context, meals[index]);
//           }));
//     }
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: content,
//     );
//   }
// }
