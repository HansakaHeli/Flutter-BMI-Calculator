import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.buttonTitle});

  final VoidCallback? onTap;
  final String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Goto result_page
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle.toString(),
            style: kLargeButtonTexStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity, // Give full width of the screen
        height: kBottomContainerHeight,
      ),
    );
  }
}