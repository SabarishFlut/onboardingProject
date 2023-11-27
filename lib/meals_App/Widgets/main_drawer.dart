import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key, required this.onSelectScreen}) : super(key: key);

  final void Function(String identifier)onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Theme.of(context).colorScheme.primaryContainer,
                    Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(0.8)
                  ])),
              child: Row(
                children: [
                  Icon(
                    Icons.fastfood,
                    size: 48,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cooking Up',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.orange),
                  )
                ],
              )),
          ListTile(
            onTap: (){onSelectScreen('meals');},
            leading: Icon(Icons.restaurant,size: 26,),
            title: Text('Meals',style: TextStyle(color: Colors.grey,fontSize: 24),),
          ),
          ListTile(
            onTap: (){onSelectScreen('filters');},
            leading: Icon(Icons.settings,size: 26,),
            title: Text('Filters',style: TextStyle(color: Colors.grey,fontSize: 24),),
          ),
        ],
      ),
    );
  }
}
