import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color colour;
  final Widget? cardChild;
  final VoidCallback ? onPress;

  // Constructor
  ReusableCard({ this.cardChild, required this.colour, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour, // If we use BoxDecoration color property should be used inside BoxDecoration
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}