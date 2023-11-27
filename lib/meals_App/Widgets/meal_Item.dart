import 'package:flutter/material.dart';
import 'package:flutter_screens/meals_App/Widgets/meal_Item_trait.dart';
import 'package:flutter_screens/meals_App/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({Key? key,required this.onSelectMeal, required this.meal}) : super(key: key);

  final Meal meal;

  final void Function(BuildContext context,Meal meal) onSelectMeal;

  String get complexityText{
    return meal.complexity.name[0].toUpperCase() + meal.complexity.name.substring(1);
  }
  String get affordablityText{
    return meal.affordability.name[0].toUpperCase() + meal.complexity.name.substring(1);
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 5,
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () {onSelectMeal(context,meal);},
        child: Stack(
          children: [
            FadeInImage(
              height: 200,
              width: double.infinity,
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              top: 0,
              right: 0,
              child: Container(
                color: Colors.black26,
                padding: EdgeInsets.symmetric(horizontal: 44, vertical: 6),
                child: Column(
                  children: [
                    Text(
                      meal.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        MealItemTrait(
                            icon: Icons.schedule,
                            label: '${meal.duration}min'),
                        SizedBox(width: 12,),
                        MealItemTrait(
                            icon: Icons.work,
                            label: '${complexityText}min'),
                        SizedBox(width: 12,),
                        MealItemTrait(
                            icon: Icons.attach_money,
                            label: '${affordablityText}min'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
