import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body:Center(
      child:Column(
        children:[
          const FaIcon(FontAwesomeIcons.cloud,
            size: 200,
            color: Colors.cyan,
          ),
          Wrap(
            runAlignment: WrapAlignment.spaceEvenly,
            children: const [
              Icon(Icons.ac_unit_sharp,
                size: 20,
                color: Colors.cyan,
              ),
              Icon(Icons.ac_unit_sharp,
                size: 20,
                color: Colors.cyan,
              ),
              Icon(Icons.ac_unit_sharp,
                size: 20,
                color: Colors.cyan,
              ),
              Icon(Icons.ac_unit_sharp,
                size: 20,
                color: Colors.cyan,
              ),
              Icon(Icons.ac_unit_sharp,
                size: 20,
                color: Colors.cyan,
              ),
              Icon(Icons.ac_unit_sharp,
                size: 20,
                color: Colors.cyan,
              ),
              Icon(Icons.ac_unit_sharp,
                size: 20,
                color: Colors.cyan,
              ),
              Icon(Icons.ac_unit_sharp,
                size: 20,
                color: Colors.cyan,
              ),
              Icon(Icons.ac_unit_sharp,
                size: 20,
                color: Colors.cyan,
              ),



            ],
          ),
        ]
      )
      )
    );
  }
}
