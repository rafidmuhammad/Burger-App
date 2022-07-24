import 'package:flutter/material.dart';

class Drink extends StatefulWidget {
  const Drink({super.key});

  @override
  _DrinkState createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  bool isAdd = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isAdd ? Icons.check_circle : Icons.add_circle,
          size: 30,
          color: const Color(0xff023E4A),
        ),
        onPressed: () {
          setState(() {
            isAdd = !isAdd;
          });
        });
  }
}
