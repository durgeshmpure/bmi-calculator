import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  final IconData Icons;
  final String title;
  GenderIcon(this.Icons,this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons,
          size: 125,
        ),
        SizedBox(
            height:10
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 25,
          ),
        )
      ],
    );
  }
}
