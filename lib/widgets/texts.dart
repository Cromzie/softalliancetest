import 'package:flutter/material.dart';
import 'package:softalliancetest/utility/colors.dart';

class TextsWidget extends StatelessWidget {
  TextsWidget({required this.text, this.color, this.fontfamily, this.fontsize});

  final String text;
  String  ? fontfamily = 'Satisfy';
  final double ? fontsize;
  Color ?color = kFieldHint;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontFamily: fontfamily, fontSize: fontsize, color: color),
    );
  }
}
