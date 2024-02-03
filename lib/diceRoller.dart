import 'package:flutter/material.dart';
import 'dart:math';

var randomizer=Random();

class diceRoller extends StatefulWidget {
  const diceRoller({super.key});

  @override
  State<diceRoller> createState() => _diceRollerState();
}


class _diceRollerState extends State<diceRoller> {
  var activeDiceImage='assets/dice-2.png';

  void rollDice(){
    setState(() {
      var diceRoll=randomizer.nextInt(6)+1;
      activeDiceImage='assets/dice-$diceRoll.png';
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children:[
        Image.asset(
          activeDiceImage,
          width: 200,


        ),

        SizedBox(height: 20,),
        TextButton
          (onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                    fontSize: 28
                )
            ),
            child: const Text(
                "Roll Dice"))
      ],
    );
  }
}
