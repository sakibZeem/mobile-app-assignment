import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskBoard extends StatefulWidget {
  const TaskBoard({super.key});

  @override
  State<TaskBoard> createState() => _TaskBoardState();
}

class _TaskBoardState extends State<TaskBoard> {
  List<Card> cards = [];

  @override
  Widget build(BuildContext context) {
    String time = DateFormat('h:mm a d\'th\' MMM, yyyy').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Task Board",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          centerTitle: true),
      body: ListView.builder(
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return cards[index];
          }),
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
                    Text('Task ${cards.length + 1}', style: TextStyle(fontWeight: FontWeight.w700),),
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
