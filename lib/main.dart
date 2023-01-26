import 'package:flutter/material.dart';
import 'cv_miguel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEBER 2 Flutter',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DEBER 2 Flutter"),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          child: Text('Kevina'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyWidget()),
            );
          },
        ),
        SizedBox(height: 10),
        ElevatedButton(
          child: Text('Dustin'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyWidget()),
            );
          },
        ),
        SizedBox(height: 10),
        ElevatedButton(
          child: Text('Miguel'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyWidget()),
            );
          },
        ),
      ])),
    );
  }
}
