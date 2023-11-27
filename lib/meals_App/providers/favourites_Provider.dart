import 'package:flutter_screens/meals_App/models/meal.dart';
import 'package:riverpod/riverpod.dart';

class FavouriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavouriteMealsNotifier() : super([]);

  bool toggleMealFavouriteStatus(Meal meal) {
    final mealsisFavourite = state.contains(meal);
    if (mealsisFavourite) {
      state = state.where((m) => m.id != meal.id).toList();
      return true;
    } else {
      state = [...state, meal];
      return false;
    }
  }
}

final favouriteMealsProvider = StateNotifierProvider<FavouriteMealsNotifier,List<Meal>>((ref) {
  return FavouriteMealsNotifier();
});
