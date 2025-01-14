import 'dart:math';
import 'package:flutter/material.dart';

class Roller extends StatefulWidget {
  const Roller({super.key});
  @override
  State<Roller> createState() {
    return _RollerState();
  }
}

class _RollerState extends State<Roller> {
  var activeDice = 'assets/images/dice-1.png';
  void roll() {
    var random = Random().nextInt(6) + 1;
    setState(() {
      activeDice = 'assets/images/dice-$random.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        TextButton(
            onPressed: roll,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
            ),
            child: Text("Roll Dice"))
      ],
    );
  }
}
