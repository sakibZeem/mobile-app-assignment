import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskBoard extends StatefulWidget {
  const TaskBoard({super.key});

  @override
  State<TaskBoard> createState() => _TaskBoardState();
}

class _TaskBoardState extends State<TaskBoard> {
  List<Card> cards = [];
  String time = DateFormat('h:mm a d\'th\' MMM, yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    // var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Task Board",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          centerTitle: true),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              elevation: 4.0,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text('Task ${index + 1}', textAlign: TextAlign.start, style: const TextStyle(fontWeight: FontWeight.w700),),
                    const Text(
                        "Your Personal task management and planning solution for planning your day, week & months"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(time)],
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: cards.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cards.add(Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              elevation: 4.0,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text('Task ${cards.length}'),
                    const Text(
                        "Your Personal task management and planning solution for planning your day, week & months"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(time)],
                    ),
                  ],
                ),
              ),
            ));
          });
        },
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
