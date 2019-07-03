import 'package:flutter/material.dart';
import 'package:monthly_expense_calculator/src/calendar_app.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:monthly_expense_calculator/src/resources/repository.dart';
import 'package:monthly_expense_calculator/screens/login_screen.dart';
import 'package:monthly_expense_calculator/screens/total_expense.dart';
import 'package:monthly_expense_calculator/screens/logging_expenses.dart';
import 'package:monthly_expense_calculator/charts/chart.dart';
import 'src/app.dart';
import 'package:monthly_expense_calculator/services/auth_services.dart';


AuthService appAuth = new AuthService();

void main() async {
  // Set default home.
  Widget _defaultHome = new WelcomeScreen();

  // Get result of the login function.
  bool _result = await appAuth.login();
  if (_result) {
    _defaultHome = new CalendarApp();
  }

  // Run app!
  runApp(new MaterialApp(
    title: 'App',
    debugShowCheckedModeBanner: false,
    home: _defaultHome,
    routes: <String, WidgetBuilder>{
      // Set routes for using the Navigator.
      '/home': (BuildContext context) => new CalendarApp(),
      '/login': (BuildContext context) => new WelcomeScreen()
    },
  ));
}

//void main() {
////  initializeDateFormatting().then((_) => runApp(CalendarApp()));
//  runApp(MyApp());
//}
//
// class MyApp extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Monthly Expense Tracker',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//             primarySwatch: Colors.deepPurple
//         ),
//         home: Scaffold(
//           body: WelcomeScreen(),
//         )
//     );;
//   }
// }



