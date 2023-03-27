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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Flutter First App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 200,
                      width: 200,
                      color: Colors.teal),
                  Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 200,
                      width: 200,
                      color: Colors.lightGreenAccent),
                  Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 200,
                      width: 200,
                      color: Colors.green),
                  Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 200,
                      width: 200,
                      color: Colors.blueAccent),
                  Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 200,
                      width: 200,
                      color: Colors.pinkAccent),
                  Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 200,
                      width: 200,
                      color: Colors.amber),
                ]),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.deepOrangeAccent),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.red),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.amberAccent),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.indigo),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.teal),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.deepOrangeAccent),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.red),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.amberAccent),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}
