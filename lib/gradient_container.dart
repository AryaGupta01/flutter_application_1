import 'package:flutter/material.dart';
import 'package:flutter_application_1/roll.dart';

var startAligment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key}); //this super.key is used to call the constructor of the parent class

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 21, 7, 147),
            Color.fromARGB(255, 4, 3, 102)
          ],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: Center(child: Roller()),
    );
  }
}
