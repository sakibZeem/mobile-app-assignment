import 'package:flutter/material.dart';
import 'package:plan_it/screens/taskboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Column(
              children: [
                SizedBox(
                  height: 400,
                ),
                Text("Welcome to"),
                Text(
                  "Plan IT",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Your Personal task management\nand planning solution",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    print('clicked');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TaskBoard()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text(
                      "Let's get started",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
                const SizedBox(height: 50,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
