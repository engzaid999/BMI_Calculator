import 'package:flutter/material.dart';
import 'constants.dart';


class DownButtun extends StatelessWidget {

  DownButtun({this.onTap,this.title});

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              title,
              style: textDownButtonStyle,
            )
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        height: bottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}