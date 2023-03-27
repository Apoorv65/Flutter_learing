import 'package:flutter/material.dart';
import 'package:flutter_learing/SomethingNew/theme.dart';

void main() {
  runApp(const ChoiceChip_1());
}

class ChoiceChip_1 extends StatelessWidget {
  const ChoiceChip_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChoiceChip_1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.kToDark,// Swatch will only take Single color which is defined on theme's top.
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
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter First App'),
        ),
        body: Center(
          child: ChoiceChip(
            label: const Text('Choice Chip'),
            selected: _isSelected,
            onSelected: (newBoolValue) {
              setState(() {
                _isSelected = newBoolValue;
              });
            },
          ),
        ));
  }
}
