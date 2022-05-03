import 'package:flutter/material.dart';
import 'package:sydelight/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sydelight',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeWidget(),
    );
  }
}
