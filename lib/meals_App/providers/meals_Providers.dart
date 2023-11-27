import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screens/meals_App/data/dummy_Data.dart';

final mealsProvider = Provider((ref){
  return dummyMeals;
});