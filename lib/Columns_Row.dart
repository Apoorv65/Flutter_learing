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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  ElevatedButton(onPressed: (){}, child: Text('Button')),
                  Text('C11R1',style: TextStyle(fontSize: 30)),
                  Text('C1R2',style: TextStyle(fontSize: 30)),
                  Text('C1R3',style: TextStyle(fontSize: 30)),
                  Text('C1R4',style: TextStyle(fontSize: 30)),
                  Text('C1R5',style: TextStyle(fontSize: 30)),
                  Text('C1R6',style: TextStyle(fontSize: 30)),
                ],
              ),
              Text('R1',style: TextStyle(fontSize: 30)),
              Text('R2',style: TextStyle(fontSize: 30)),
              Text('R3',style: TextStyle(fontSize: 30)),
              Text('R4',style: TextStyle(fontSize: 30)),
              Text('R5',style: TextStyle(fontSize: 30)),
              Text('R6',style: TextStyle(fontSize: 30)),
            ],
          ),
          Text('C1',style: TextStyle(fontSize: 30)),
          Text('C2',style: TextStyle(fontSize: 30)),
          Text('C3',style: TextStyle(fontSize: 30)),
          Text('C4',style: TextStyle(fontSize: 30)),
          Text('C5',style: TextStyle(fontSize: 30)),
          Text('C6',style: TextStyle(fontSize: 30)),
          ElevatedButton(onPressed: (){}, child: Text('Clicked')),
        ],
      ),
    );
  }
}
