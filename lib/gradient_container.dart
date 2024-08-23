import 'package:flutter/material.dart';
import 'package:flutter_application_3/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topCenter,
            end: Alignment.topRight),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
