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
      theme: ThemeData(),
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
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            title: Text('SliverAppBar'),
            expandedHeight: 150,      //use with snap
            flexibleSpace: FlexibleSpaceBar(      //use with snap
              title: Text('Snap AppBar'),      //use with snap
              centerTitle: true,      //use with snap
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
              [
                const Text(
                  'SLIVER',
                  style: TextStyle(fontSize: 600),
                )
              ]
          ) ,

          )
        ],
      ),
    );
  }
}
