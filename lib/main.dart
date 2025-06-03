import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterApp();
}

class _CounterApp extends State<CounterApp> {
  int counter = 0;

  void increment() {
    setState(() {
      counter = counter + 1;
    });
  }

  void decrement() {
    setState(() {
      if (counter > 0) {
        counter = counter - 1;
      }
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Column(
        children: [
          Text("Welcome to Counter App", style: TextStyle(fontSize: 20)),
          SizedBox(height: 16),
          Text("Result Counter: $counter"),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: increment, icon: Icon(Icons.add)),
              IconButton(onPressed: decrement, icon: Icon(Icons.remove)),
            ],
          ),

          ElevatedButton(
            onPressed: reset,
            child: Text("Reset"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
