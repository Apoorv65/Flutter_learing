import 'package:flutter/material.dart';
import 'package:flutter_learing/UiHelper/TextTheme.dart';

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
        textTheme: const TextTheme(
           headline1:TextStyle(fontFamily: 'Amsterland',fontWeight: FontWeight.w300,fontSize: 50,color: Colors.redAccent),
          subtitle1:TextStyle(fontFamily: 'Techno',fontSize: 20,color: Colors.teal),
         ),
      ),
      home:  const MyHomePage(),
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
      body:Column(
        children: [
          SizedBox(height:20),
          Text('Hi there.',style:Theme.of(context).textTheme.headline1!.copyWith(color: Colors.orangeAccent),),
          SizedBox(height:20),
          Text('Hi there.',style:Theme.of(context).textTheme.subtitle1),
          SizedBox(height:20),
          Text('Hi there.',style:Theme.of(context).textTheme.headline1),
          SizedBox(height:20),
          Text('Hi there.',style:Theme.of(context).textTheme.subtitle1),
          SizedBox(height:20),
          Text('Hi there.',style:mTextStyle1()),
          SizedBox(height:20),
        ],
      )
    );
  }
}




