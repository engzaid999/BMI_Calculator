import 'package:flutter/material.dart';
import 'constants.dart';

class columIcon extends StatelessWidget {

  columIcon({this.icon , this.iconTitle});

  final IconData icon;
  final String iconTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Expanded(

          child: Icon(
            icon,
            size: 70,
          ),
        ),
        SizedBox(
          height: 50,
        ),

        Expanded(
          child: Text(
            iconTitle,
            style: textLableStyle,
          ),
        )
      ],
    );
  }
}