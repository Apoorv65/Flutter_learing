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
  bool _bool= true;

  @override
  Widget build(BuildContext context) {
    //double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter First App'),
        actions: [
          TextButton(
              onPressed: (){
                setState(() {
                  _bool= !_bool;
                });
              },
              child: const Text(
                  'Switch',
              style: TextStyle(color: Colors.orange),
              ),
          )
        ],
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Image.asset(
              'assets/images/car.jpg',
            width: w,
          ),
          secondChild:Image.asset(
          'assets/images/parrot.jpg',
          width: w,
        ),
          crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds:1),
        ),

      ),
    );
  }
}
