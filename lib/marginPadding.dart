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
        title: const Text('Flutter First App'),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        margin: EdgeInsets.all(15),
        child: const Padding(
        padding: EdgeInsets.only(top:20, bottom:30,right:15,left:45),
        child: Text('Hello this app is awesome.',style:TextStyle(fontSize: 25,color:Colors.white)),
        ),
      ),
    );
  }
}
