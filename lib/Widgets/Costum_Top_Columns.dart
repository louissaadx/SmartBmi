import 'package:flutter/material.dart';
import 'package:smart_bmi_calculator/constants.dart';

class CostumTopColumn extends StatelessWidget {
  
  final IconData icondata;
  final String text;

  CostumTopColumn({@required this.icondata, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icondata, size: icon_size, color: icon_color,),
        SizedBox(height: space_between_icon_and_text,),
        Text(
          text,
          style: TextStyle(color: text_color, fontSize: text_size, fontWeight: fontweight),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
