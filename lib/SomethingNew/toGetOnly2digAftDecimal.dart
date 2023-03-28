import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.black,
        appBar: AppBar(
          // backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d{0,2})'))
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
