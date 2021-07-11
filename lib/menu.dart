import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final mealText;
  final foodText;
  

  Menu(this.mealText, this.foodText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(mealText),
          Text(foodText),
        ],
      ),
      );
  }
}