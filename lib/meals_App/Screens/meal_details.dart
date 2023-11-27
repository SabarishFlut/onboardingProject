import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screens/meals_App/models/meal.dart';
import 'package:flutter_screens/meals_App/providers/favourites_Provider.dart';

class MealDetails extends ConsumerWidget {
  const MealDetails({Key? key, required this.meal,}) : super(key: key);

  final Meal meal;
  //final void Function(Meal meal)onToggleFavourite;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouritemeals = ref.watch(favouriteMealsProvider);
   final isFavourite = favouritemeals.contains(meal);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(onPressed: (){
            final wasAdded = ref.read(favouriteMealsProvider.notifier).toggleMealFavouriteStatus(meal);
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(wasAdded ? 'Meal added as a favourite' : 'Meal Removed')),
            );
            //onToggleFavourite(meal);
            }, icon: Icon(isFavourite ? Icons.star : Icons.star_border),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              height: 300,
              width: double.infinity,
            ),
            SizedBox(height: 14,),
            Text("Ingrediants", style: Theme
                .of(context)
                .textTheme
                .titleLarge!
                .copyWith(
                color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 14,),
            for(final ingrediant in meal.ingredients)
              Text(ingrediant,style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(
                  color: Theme.of(context).colorScheme.background
              ),),
            SizedBox(height: 24,),
            Text("Steps", style: Theme
                .of(context)
                .textTheme
                .titleLarge!
                .copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 14,),
            for(final step in meal.steps)
              Text(step,style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(
                  color: Theme.of(context).colorScheme.background
              ),),
          ],
        ),
      ),
    );
  }
}
