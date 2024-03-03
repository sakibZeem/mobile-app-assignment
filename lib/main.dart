import 'package:flutter/material.dart';
import 'package:plan_it/screens/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      title: "PlanIT",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
