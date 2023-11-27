import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screens/bloc_StateManage/app.dart';
import 'package:flutter_screens/course_practice/diceapp.dart';
import 'package:flutter_screens/course_practice/quiz_app.dart';
import 'package:flutter_screens/favourite_places/screens/places.dart';
import 'package:flutter_screens/feature_widget/fittness&workout.dart';
import 'package:flutter_screens/feature_widget/healthy_recipe.dart';
import 'package:flutter_screens/feature_widget/live_fully.dart';
import 'package:flutter_screens/feature_widget/patient_stories.dart';
import 'package:flutter_screens/hive_practice/dropdownprac.dart';
import 'package:flutter_screens/hive_practice/hive_p1.dart';
import 'package:flutter_screens/hive_practice/obj_prac.dart';
import 'package:flutter_screens/magic_Link/mLogin.dart';
import 'package:flutter_screens/meals_App/Screens/meals.dart';
import 'package:flutter_screens/meals_App/Screens/tabs.dart';
import 'package:flutter_screens/meals_App/data/dummy_Data.dart';
import 'package:flutter_screens/models/practice/practice1.dart';
import 'package:flutter_screens/newCheck_in/checkin2.dart';
import 'package:flutter_screens/newCheck_in/magic_Homepg.dart';
import 'package:flutter_screens/newCheck_in/magic_SplashScreen2.dart';
import 'package:flutter_screens/newCheck_in/magic_Splashscreen1.dart';
import 'package:flutter_screens/newCheck_in/nudj_home_page.dart';
import 'package:flutter_screens/newCheck_in/workoutpage.dart';
import 'package:flutter_screens/new_FutureBuild/displayPage.dart';
import 'package:flutter_screens/new_Rest_api/displaying_screen.dart';
import 'package:flutter_screens/plant_app/custom_Paint.dart';
import 'package:flutter_screens/plant_app/firstpage.dart';
import 'package:flutter_screens/plant_app/pie_chart.dart';
import 'package:flutter_screens/plant_app/rateApp.dart';
import 'package:flutter_screens/plant_app/restApiprac.dart';
import 'package:flutter_screens/sharedpref/loginLogic.dart';
import 'package:flutter_screens/sharedpref/login_logout_prac.dart';
import 'package:flutter_screens/state_feature/home/ui/home_state.dart';
import 'package:flutter_screens/views/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'expense_tracker/expensesP1.dart';
import 'feature_widget/faceIdAuth.dart';
import 'feature_widget/feature_widget1.dart';
import 'feature_widget/healthy_eating.dart';
import 'feature_widget/nutritionrecepies.dart';
import 'feature_widget/programs_widget.dart';
import 'feature_widget/yogaforage.dart';
import 'meals_App/Screens/categories.dart';
import 'newCheck_in/checkIn3.dart';
import 'newCheck_in/checkIn4.dart';
import 'newCheck_in/checkInp1.dart';
import 'newCheck_in/fitnessMain.dart';
import 'newCheck_in/magic_Confirm.dart';
import 'newCheck_in/magic_Submit.dart';
import 'newCheck_in/preWorkout1.dart';

var KColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 96, 59, 181));
var KDarkColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 5, 99, 125));

void main() {
  // WidgetsFlutterBinding.ensureInitialized();// stops autorotate
  // SystemChrome.setPreferredOrientations([
  // ]).then((value) {
   runApp(ProviderScope(child: MyApp()));
  //WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized.
  //ScreenUtil.init(BoxConstraints(maxWidth: 1080, maxHeight: 1920));

  //Magic.instance = Magic("pk_live_765D1163F80A21D6");
  //ScreenUtil.init(context);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData().copyWith(
      //     useMaterial3: true,
      //     colorScheme: KDarkColorScheme,
      //     cardTheme: CardTheme().copyWith(
      //       color: KColorScheme.onPrimaryContainer,
      //       margin: EdgeInsets.all(16.0),
      //     )),
      // theme: ThemeData().copyWith(
      //     useMaterial3: true,
      //     //colorScheme: KColorScheme,
      //     //scaffoldBackgroundColor: CupertinoColors.systemPurple,
      //     appBarTheme: AppBarTheme().copyWith(
      //         backgroundColor: KColorScheme.onPrimaryContainer,
      //         foregroundColor: KColorScheme.onPrimaryContainer),
      //     cardTheme: CardTheme().copyWith(
      //       color: KColorScheme.onPrimary,
      //       margin: EdgeInsets.all(16.0),
      //     )
      // ),
      //themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      themeMode: ThemeMode.dark,
      title: 'Screen',
      home: MagicSplashScreen(),
      //CategoriesScreen(availableMeals: [],),
    );
  }
// Widget build(BuildContext context) {
//   return  Stack(
//     children: [
//       MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Screens',
//         home: MobileLogin(),
//       ),
//       Magic.instance.relayer,
//     ],
//   );
// }
}
