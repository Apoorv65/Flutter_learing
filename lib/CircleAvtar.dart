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
        primarySwatch: Colors.red,
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
        backgroundColor: Colors.black,
        title: const Text('Flutter First App',style: TextStyle(fontSize: 25 ,color: Colors.red)),
        leading: GestureDetector(
          onTap: () { /* Write listener code here */ },
          child: const Icon( Icons.menu,),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                    Icons.more_vert
                ),
              )
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            CircleAvatar(
              radius: 150,
              child: Column(
                children:[
                  Container(
                    width:250,
                    height:250,
                    margin: const EdgeInsets.only(top:50),
                      child: Image.asset('assets/images/f.png'),

                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Text('Hi there.',style: TextStyle(fontFamily: 'Amsterland',fontSize: 50),)
          ],
        ),


      ),

    );
  }
}




