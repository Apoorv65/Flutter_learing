import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //double h = MediaQuery.of(context).size.height;
    //double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter First App')
      ),
      body: Wrap(
        direction: Axis.vertical,
        spacing: 5,
        runSpacing: 5,
        children: [
          Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
            ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),Container(
              color: Colors.deepPurpleAccent,
              height: 50,
              width: 50
          ),


        ],
      ),
    );
  }
}
