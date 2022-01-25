import 'package:flutter/material.dart';
import 'constants.dart';

class Roundbox extends StatelessWidget {
  final Color? colour;
  final Widget? widget1;
  final void Function()? ontap;
  Roundbox({this.colour,this.widget1,this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: widget1,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}

