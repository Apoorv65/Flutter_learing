import 'package:flutter/material.dart';

void main() {
  runApp(const ChoiceChip());
}

class ChoiceChip extends StatefulWidget {
  const ChoiceChip({Key? key}) : super(key: key);

  @override
  State<ChoiceChip> createState() => _ChoiceChipState();
}

class _ChoiceChipState extends State<ChoiceChip> {
  List<String> months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

  var listforui = [];

  int itemcounttoshow = 4;

  @override
  void initState() {
    listforui.addAll(months.getRange(0, itemcounttoshow));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Wrap(
          children: [
            for (var shop in listforui)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Chip(
                  label: Text(shop.toString()),
                  shape: const StadiumBorder(
                    side: BorderSide(
                      color: Color(0xFFBDBDBD),
                    ),
                  ),
                ),
              ),
            if (months.length > itemcounttoshow && listforui.length < months.length)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GestureDetector(
                  onTap: () => setState(
                          () => listforui.addAll(months.skip(itemcounttoshow))),
                  child: const Chip(
                    label: Text("Show More"),
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Color(0xFFBDBDBD),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}