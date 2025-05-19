

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

var startAlignment = Alignment.topCenter;
var endAlignmenr = Alignment.bottomCenter;

class GradientContainer extends StatefulWidget {
   const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

@override
  State<GradientContainer> createState() => _GradientContainerState();

}
class _GradientContainerState extends State<GradientContainer> {

  


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignmenr,
          colors: [
            widget.color1,
            widget.color2,
          ],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
