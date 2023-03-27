import 'package:flutter/material.dart';

class NewBlank extends StatefulWidget {
  const NewBlank({Key? key}) : super(key: key);

  @override
  State<NewBlank> createState() => _NewBlankState();
}

class _NewBlankState extends State<NewBlank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name'),
      ),
    );
  }
}
