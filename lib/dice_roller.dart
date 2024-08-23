import 'package:flutter/material.dart';
import 'dart:math';
var randomizer=Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
  var activeDiceRoll=2;
  void rollDice() {
    setState(() {
      activeDiceRoll=randomizer.nextInt(6)+1;
    });
  }
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$activeDiceRoll.png',
              width: 150,
            ),
            const SizedBox(height: 25),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top:15),
                foregroundColor: Colors.brown,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Click to Roll Dice'),
            ),
          ],
        );
  }
}