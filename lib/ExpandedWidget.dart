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
      body:Row(
        children: [
          Container(
            width:50,
            height:100,
            color:Colors.lightGreenAccent
          ),
          Expanded(
            flex:9,
            child: Container(
            width:50,
            height:100,
            color:Colors.deepPurpleAccent
          ),
          ),
          Expanded(
            child:Container(
            width:50,
            height:100,
            color:Colors.teal
          ),
          ),
          Container(
              width:50,
              height:100,
              color:Colors.indigoAccent
            ),

        ]
      ),
    );
  }
}
