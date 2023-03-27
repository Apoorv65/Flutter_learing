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
      body: Column(
        children: [

          Expanded(
            flex: 4,
            child: Container(
                color: Colors.black26
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.black38
            ),
          ),
          const CatItems(),
          Expanded(
            flex: 2,
            child: Container(
                color: Colors.black54
            ),
          ),
        ],
      ),
    );
  }
}


class CatItems extends StatelessWidget{
  const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.black12,
        child: ListView.builder(itemBuilder:(context,index)=>const Padding(
          padding: EdgeInsets.all(11),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
            ),
          ),
        ),itemCount:10,scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

}