import 'package:flutter/material.dart';
import 'package:untitled2/Styledtext.dart';
import 'package:untitled2/diceRoller.dart';

  const startAlignment=Alignment.bottomLeft;
  const endAlignment=Alignment.bottomRight;

  class gradient_container extends StatelessWidget {
    const gradient_container(this.color1,this.color2,{super.key});

    final Color color1;
    final Color color2;


    @override
    Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1,color2],
          begin:startAlignment,
              end:endAlignment,
          ),
        ),
        child: const Center(
         // child: Image(
         //     image: ResizeImage(AssetImage('assets/dice-2.png'), width:300, height: 300),
         // ),
          child: diceRoller(),
         ),
      );
    }
  }
