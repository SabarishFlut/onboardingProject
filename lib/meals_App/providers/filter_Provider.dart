import 'package:flutter_screens/meals_App/Screens/filters.dart';
import 'package:flutter_screens/meals_App/providers/meals_Providers.dart';
import 'package:riverpod/riverpod.dart';

enum Filter { glutenFree, lactoseFree, vegetarian, vegan }

class FilterNotifier extends StateNotifier<Map<Filter, bool>> {
  FilterNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

  void setFilters(Map<Filter, bool> chosenFilter) {
    state = chosenFilter;
  }

  void setFilter(Filter filter, bool isActive) {
    //state[filter]= isActive;
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FilterNotifier, Map<Filter, bool>>(
        (ref) => FilterNotifier());

final filterMealProvider = Provider((ref){
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);
  return meals.where((meal){
    if(activeFilters[Filter.glutenFree]! && !meal.isGlutenFree){
      return false;
    }
    if(activeFilters[Filter.lactoseFree]! && !meal.isLactoseFree){
      return false;
    }
    if(activeFilters[Filter.vegetarian]! && !meal.isVegetarian){
      return false;
    }
    if(activeFilters[Filter.vegan]! && !meal.isVegan){

    }
    return true;
  }).toList();
});
