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
  TimeOfDay? time =TimeOfDay.now();
  DateTime _dateTime = DateTime(2100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter First App'),
      ),
      body: Center(
        child: Text('${time!.hour.toString()} : ${time!.minute.toString()}',
            style: const TextStyle(fontFamily: 'Huhansky', fontSize: 80)),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_time),
        onPressed: () async {
          TimeOfDay? newTime = await showTimePicker(
            context: context,
            initialTime: time!,
          );
          if (newTime != null) {
            setState(() {
              time = newTime;
            });
          }
        },
      ),
    );
  }
}
