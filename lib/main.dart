// import 'dart:html';

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
      title: 'Fluttery Practice',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        hoverColor: Colors.red,
      ),
      home: const MyHomePage(title: 'Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _counter = 1;
  var _counterTwo = 0;
  var some = 2;

  void _incrementCounter() {
    setState(() {
      _counter = _counter * _counterTwo;
    });
  }

  void _incrementCounterTwo() {
    setState(() {
      _counterTwo = _counterTwo + some;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
                "Following counter adds value of second counter times the first "),
            Text(
              ' \nValue of counter is $_counter ',
            ),
            Text(
              ' Value of second counter is $_counterTwo ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_counterTwo',
              style: Theme.of(context).textTheme.headline1,
            ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
              heroTag: null,
            ),
            FloatingActionButton(
                onPressed: _incrementCounterTwo,
                tooltip: 'Incrementx2',
                child: const Icon(Icons.add),
                heroTag: null)
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
