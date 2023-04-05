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

@immutable
class AppButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  String? text;
  IconData? icon;
  Color? iconColor;
  double containerWidth;
  double containerHeight;
  bool? isIcon;

  AppButton({
    Key? key,
    required this.textColor,
    required this.backgroundColor,
    required this.borderColor,
    this.text,
    required this.containerWidth,
    required this.containerHeight,
    this.icon,
    this.iconColor,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: borderColor, width: 1),
        color: backgroundColor,
      ),
      child: Center(
        child: isIcon == false ? Text(
          text!,
          style: TextStyle(color: textColor),
        ) : Icon(icon,color: iconColor),
      ),
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
    // double h = MediaQuery.of(context).size.height;
    // double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: AppButton(
          isIcon: true,
          textColor: Colors.white,
          backgroundColor: Colors.black,
          borderColor: Colors.white,
          iconColor: Colors.red,
          icon: Icons.more_vert,
          containerWidth: 200,
          containerHeight: 150,
        ),
      ),
    );
  }
}
