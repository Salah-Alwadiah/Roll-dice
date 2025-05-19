import 'package:flutter/material.dart';
import 'dart:developer' as dev;
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  int acctiveDice = 1;



  void rollDice(){
    setState(() {
      acctiveDice = random.nextInt(6)+1;
});

  dev.log('The Button is Clicked!');
}



  @override
  Widget build(BuildContext context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/dice-$acctiveDice.png', width: 200),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 30),
              ),
                onPressed: rollDice,
                child: const Text('Roll Dice'),
            ),
          ],
        );
  }
}