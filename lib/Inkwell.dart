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
        title: Text('Flutter First App'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print('Tapped on Container');
          },
          onLongPress: () {
            print('Long pressed on Container');
          },
          onDoubleTap: () {
            print('Double Tapped on Container');
          },
          child: Container(
            width: 400,
            height: 400,
            color: Colors.lightGreenAccent,
            child: Center(
                child: InkWell(
                    onTap: () {
                      print('Tapped on Image');
                    },
                    onLongPress: () {
                      print('Long pressed on Image');
                    },
                    onDoubleTap: () {
                      print('Double Tapped on Image');
                    },
                    child: Image.asset('assets/images/car.jpg')
                )
            ),
          ),
        ),
      ),
    );
  }
}
