import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  //final Function selectHandler;
  final mealText;
  final foodText;


  Menu(this.mealText, this.foodText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use

      child: Column(
        children: [
          Text(mealText),
          Text(foodText),
        ],
      ),
        
      );
    
  }
}