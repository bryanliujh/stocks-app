import 'package:flutter/material.dart';
import 'package:stockapp/screens/news_screen.dart';
import 'package:stockapp/screens/tabs_screen.dart';
import 'package:stockapp/screens/ticker_screen.dart';

// will always run first
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stocks App',
        theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.red,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        // register routes here so on other screen can access
        routes: {
          '/': (ctx) => TabsScreen(),
          TickerScreen.routeName: (ctx) => TickerScreen(),
          NewsScreen.routeName: (ctx) => NewsScreen(),
        });
  }
}
