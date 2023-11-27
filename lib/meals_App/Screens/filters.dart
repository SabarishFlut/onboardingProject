// import 'package:flutter/material.dart';
// import 'package:flutter_screens/meals_App/Screens/tabs.dart';
// import 'package:flutter_screens/meals_App/Widgets/main_drawer.dart';
//
// class FilterScreen extends StatefulWidget {
//   const FilterScreen({Key? key}) : super(key: key);
//
//   @override
//   State<FilterScreen> createState() => _FilterScreenState();
// }
//
// class _FilterScreenState extends State<FilterScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var _gluteenFreeFilterset = false;
//     var _lactoseFreeFilterset = false;
//     var _vegetarianFreeFilterset = false;
//     var _veganFreeFilterset = false;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Your filters"),
//       ),
//       // drawer: MainDrawer(onSelectScreen: (identifier){
//       //   Navigator.of(context).pop();
//       //   if(identifier == 'meals'){
//       //       Navigator.of(context).pushReplacement(MaterialPageRoute(
//       //         builder: (ctx) => TabScreen(),
//       //       ));
//       //     }
//       // },),
//       body: Column(
//         children: [
//           SwitchListTile(
//             value: _gluteenFreeFilterset,
//             onChanged: (bool isChecked) {
//               setState(() {
//                 _gluteenFreeFilterset = isChecked;
//                 print(isChecked);
//               });
//             },
//             title: Text(
//               "Gluteen free",
//             ),
//             subtitle: Text("Only include gluteen details"),
//           ),
//           SwitchListTile(
//             value: _lactoseFreeFilterset,
//             onChanged: (isChecked) {
//               _lactoseFreeFilterset = isChecked;
//             },
//             title: Text(
//               "Lactose free",
//             ),
//             subtitle: Text("Only include lactose details"),
//           ),
//           SwitchListTile(
//             value: _vegetarianFreeFilterset,
//             onChanged: (isChecked) {
//               _vegetarianFreeFilterset = isChecked;
//             },
//             title: Text(
//               "Vegetarian free",
//             ),
//             subtitle: Text("Only include Vegetarian details"),
//           ),
//           SwitchListTile(
//             value: _veganFreeFilterset,
//             onChanged: (isChecked) {
//               _vegetarianFreeFilterset = isChecked;
//             },
//             title: Text(
//               "Vegan free",
//             ),
//             subtitle: Text("Only include Vegan details"),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screens/meals_App/providers/filter_Provider.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({Key? key}) : super(key: key);

  // @override
  // void initState() {
  //   super.initState();
  //   final activeFilters = ref.read(filtersProvider);
  //   _glutenFreeFilterSet = activeFilters[Filter.glutenFree]!;
  //   _lactoseFreeFilterSet = activeFilters[Filter.lactoseFree]!;
  //   _vegetarianFilterSet = activeFilters[Filter.vegetarian]!;
  //   _veganFilterSet = activeFilters[Filter.vegan]!;
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your filters"),
      ),
      // body: WillPopScope(
      //   onWillPop: ()async{
      //     ref.read(filtersProvider.notifier).setFilters({
      //       Filter.glutenFree: _glutenFreeFilterSet,
      //       Filter.lactoseFree : _lactoseFreeFilterSet,
      //       Filter.vegetarian: _vegetarianFilterSet,
      //       Filter.vegan : _veganFilterSet,
      //     });
      //     Navigator.of(context).pop({
      //       // Filter.glutenFree: _glutenFreeFilterSet,
      //       // Filter.lactoseFree : _lactoseFreeFilterSet,
      //       // Filter.vegetarian: _vegetarianFilterSet,
      //       // Filter.vegan : _veganFilterSet,
      //     });
      //     return true;
      //   },
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
            title: const Text(
              "Gluten free",
            ),
            subtitle: const Text("Only include gluten details"),
          ),
          SwitchListTile(
            value: activeFilters[Filter.lactoseFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
            title: const Text(
              "Lactose free",
            ),
            subtitle: const Text("Only include lactose details"),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
            title: const Text(
              "Vegetarian",
            ),
            subtitle: const Text("Only include Vegetarian details"),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegan]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
            title: const Text(
              "Vegan",
            ),
            subtitle: const Text("Only include Vegan details"),
          ),
        ],
      ),
    );
  }
}
