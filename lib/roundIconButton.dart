import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//    shape: CircleBorder(),
      fillColor: Color(0xff8A8A8A),
    );
  }
}