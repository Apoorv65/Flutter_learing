import 'package:flutter/material.dart';

main(){
  runApp(mark_1());
}

class mark_1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mark one",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.green,

      ),
      home: DashBoardScreen() ,
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
      title: const Text('DashBoardScreen'),
      ),

      body: Container(
        color: Colors.white,
        child:Center(
          child: Container(
            width: 200,
            height: 200,
            decoration:  BoxDecoration(
                color: Colors.redAccent,
              border: Border.all(
                width: 5,
                color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius:11,
                  spreadRadius:10,
                  color: Colors.grey
                ),
              ],
              shape:BoxShape.circle
            ),

          ),
        ),
      ),
    );
  }


}