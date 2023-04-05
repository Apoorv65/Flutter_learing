/*
import 'package:flutter/material.dart';

class MyPages extends StatefulWidget {
  @override
  _MyPagesState createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> with SingleTickerProviderStateMixin {
  late Animation<double> _progressAnimation;
  late AnimationController _progressAnimcontroller;

  @override
  void initState() {
    super.initState();

    _progressAnimcontroller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _progressAnimation = Tween<double>(begin: beginWidth, end: endWidth)
        .animate(_progressAnimcontroller);

    _setProgressAnim(0, 1);
  }

  late double growStepWidth, beginWidth, endWidth = 0.0;
  int totalPages = 4;

  _setProgressAnim(double maxWidth, int curPageIndex) {
    setState(() {
      growStepWidth = maxWidth / totalPages;
      beginWidth = growStepWidth * (curPageIndex - 1);
      endWidth = growStepWidth * curPageIndex;

      _progressAnimation = Tween<double>(begin: beginWidth, end: endWidth)
          .animate(_progressAnimcontroller);
    });

    _progressAnimcontroller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQD = MediaQuery.of(context);
    var maxWidth = mediaQD.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.transparent,
          child: Row(
            children: <Widget>[
              AnimatedProgressBar(
                animation: _progressAnimation, key: null,
              ),
              Expanded(
                child: Container(
                  height: 6.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.cyanAccent),
                ),
              )
            ],
          ),
        ),
      ),
      body: PageView(
        onPageChanged: (i) {
          //index i starts from 0!
          _progressAnimcontroller.reset(); //reset the animation first
          _setProgressAnim(maxWidth, i + 1);
        },
        children: <Widget>[
          Container(
            color: Colors.greenAccent,
            child: const Center(
              child: Text("Page 1"),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: const Center(
              child: Text("Page 2"),
            ),
          ),
          Container(
            color: Colors.amberAccent,
            child: const Center(
              child: Text("Page 3"),
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: const Center(
              child: Text("Page 4"),
            ),
          ),
        ],
      ),
    );
  }
}

//Animated Progress Bar
// import 'package:flutter/material.dart';

class AnimatedProgressBar extends AnimatedWidget {
  AnimatedProgressBar({required Key key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Listenable animation = listenable;

    return Container(
      height: 6.0,
      width: 80,
      decoration: BoxDecoration(color: Colors.white),
    );
  }
}
*/
