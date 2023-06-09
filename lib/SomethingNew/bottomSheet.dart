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
          title: const Text('Flutter First App'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Bottom Sheet'),
            onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                return SizedBox(
                  height: 400,
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('close'),
                      onPressed: (){
                        Navigator.pop(context);
                        },
                    ),
                  )
                );
              }
            );
            }
          ),
        )
    );
  }
}
