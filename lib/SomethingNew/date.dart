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

  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter First App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                '${_dateTime.day} ${_dateTime.month} ${_dateTime.year}',
                style: const TextStyle(fontFamily: 'Huhansky',fontSize: 80)
            ),
            ElevatedButton(onPressed:() async{
              DateTime? _newDate = await showDatePicker(context: context,
                  initialDate: _dateTime,
                  firstDate: DateTime(1600),
                  lastDate: DateTime(3000));
              if(_newDate != null) {
                setState(() {
                  _dateTime = _newDate;
                });
              }
            }, child: const Text(
              'Get Date'
            ))
          ],
        ),
      ),

    );
  }
}
