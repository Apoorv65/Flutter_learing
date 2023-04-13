import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

//additional run args  "--no-sound-null-safety"
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          automaticallyImplyLeading: false,
          title: const Text("Flutter Polygon Clipper Demo"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(30.0),
                  child: ClipPolygon(
                    sides: 5,
                    borderRadius: 5.0,
                    rotate: 70.0,
                    boxShadows: [
                      PolygonBoxShadow(color: Colors.black, elevation: 7.0),
                      PolygonBoxShadow(color: Colors.blue, elevation: 5.0)
                    ],
                    child: Image.network(
                      "https://images.unsplash.com/photo-1508672019048-805c876b67e2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dHJhdmVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.cover,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(30.0),
                  child: ClipPolygon(
                    sides: 6,
                    borderRadius: 5.0,
                    rotate: 90.0,
                    boxShadows: [
                      PolygonBoxShadow(color: Colors.greenAccent, elevation: 4.0),
                      PolygonBoxShadow(color: Colors.green, elevation: 5.0)
                    ],
                    child: Container(
                      color: Colors.black,
                      child: Image.network(
                        "https://images.unsplash.com/photo-1530789253388-582c481c54b0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(30.0),
                  child: ClipPolygon(
                    sides: 8,
                    borderRadius: 5.0,
                    rotate: 90.0,
                    boxShadows: [
                      PolygonBoxShadow(color: Colors.black, elevation: 1.0),
                      PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
                    ],
                    child: Container(
                      color: Colors.black,
                      child: Image.network(
                        "https://images.unsplash.com/photo-1493863641943-9b68992a8d07?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG9ncmFwaGVyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}