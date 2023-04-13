import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:
      Column(

          children: [
            const SizedBox(height: 50,),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(alignment: AlignmentDirectional.center,
                children: [

                  Container(
                    width: w,
                    height: 67,
                    color: Colors.black38,
                  ),


                  Align(
                alignment: AlignmentDirectional.topStart,
                child: ClipPath(
                  clipper: MyFirstHexa(),
                  child: Container(
                      height: 65,
                      width: w * .335,
                      padding: const EdgeInsets.all(20),
                      decoration:  BoxDecoration(
                        color: Colors.red.shade200,
                        border:const Border(
                          right: BorderSide(color: Colors.black12),
                          top: BorderSide(color: Colors.black12),
                          left: BorderSide(color: Colors.black12),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                      ),
                      child: Center(
                          child: Text(maxLines: 1,
                        'Choose Appointment',
                        style: GoogleFonts.kumbhSans(fontSize: 12,
                            textStyle: const TextStyle(
                          color: Colors.black,
                        )),
                      ))),
                ),
              ),
              Positioned(
                left: w * .5 - (w * .19),
                right: w * .5 - (w * .19),
                child: ClipPath(
                  clipper: MySecondHexa(),
                  child: Container(
                      height: 65,
                     // width: w * .35,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade200,
                        border: const Border(
                          right: BorderSide(color: Colors.black12),
                          top: BorderSide(color: Colors.black12),
                          left: BorderSide(color: Colors.black12),
                          bottom: BorderSide(color: Colors.black12),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        'Your Info',
                        style: GoogleFonts.kumbhSans(fontSize: 12,
                            textStyle: const TextStyle(
                          color: Colors.black,
                        )),
                      ))),
                ),
              ),
              Positioned(
                right: 0,
                child: ClipPath(
                  clipper: MyThirdHexa(),
                  child: Container(
                      height: 65,
                      width: w * .335,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        border: const Border(
                          right: BorderSide(color: Colors.black12),
                          top: BorderSide(color: Colors.black12),
                          left: BorderSide(color: Colors.black12),
                          bottom: BorderSide(color: Colors.black12,),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        'Confirmation',
                        style: GoogleFonts.kumbhSans(fontSize: 12,
                            textStyle: const TextStyle(
                          color: Colors.black,
                        )),
                      ))),
                ),
              ),
          ],
        ),
            ),
      ]),
    );
  }
}

// Custom hexagon pattern
class MyFirstHexa extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(0, size.height / 2),
      Offset(0, size.height),
      Offset(size.width * .9, size.height),
      Offset(size.width, size.height / 2),
      Offset(size.width * .9, 0),
      const Offset(0, 0)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MySecondHexa extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(size.width * .1, size.height / 2),
      Offset(0, size.height),
      Offset(size.width * .9, size.height),
      Offset(size.width, size.height / 2),
      Offset(size.width * .9, 0),
      const Offset(0, 0)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyThirdHexa extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(size.width * .1, size.height / 2),
      Offset(0, size.height),
      Offset(size.width, size.height),
      Offset(size.width, size.height / 2),
      Offset(size.width, 0),
      const Offset(0, 0)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
