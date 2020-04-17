import 'package:flutter/material.dart';
import 'package:smart_bmi_calculator/Widgets/Costum_Core_Container.dart';
import 'package:smart_bmi_calculator/Widgets/Costum_Row_Widget.dart';
import 'package:smart_bmi_calculator/constants.dart';
import 'package:smart_bmi_calculator/Widgets/Costum_Top_Columns.dart';

class BMICoreDesign extends StatefulWidget {
  @override
  _BMICoreDesignState createState() => _BMICoreDesignState();
}

int currentValue = starting_Slider_Value.toInt();

class _BMICoreDesignState extends State<BMICoreDesign> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: CostumRowWidget(
            top: top_containers_margin_top_value,
            bottom: top_containers_margin_bottom_value,
            left: top_left_Container_left_margin_value,
            right: top_left_Container_right_margin_value,
            top2: top_containers_margin_top_value,
            bottom2: top_containers_margin_bottom_value,
            left2: top_righ_Container_left_margin_value,
            right2: top_right_Container_right_margin_value,
            widget1: CostumTopColumn(
              icondata: male_logo,
              text: "MALE",
            ),
            widget2: CostumTopColumn(
              icondata: female_logo,
              text: "FEMALE",
            ),
          ),
        ),
        Expanded(
          child: CostumCoreContainer(
            leftCostumCoreContainerMargin: center_Container_left_margin_value,
            rightCostumCoreContainerMargin: center_Container_right_margin_value,
            topCostumCoreContainerMargin: center_Container_top_margin_value,
            bottomCostumCoreContainerMargin:
                center_Container_bottom_margin_value,
            widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("HEIGHT", style: height_Text_Style),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(currentValue.toString(), style: value_Text_Style),
                    Text("cm", style: cm_Text_Style),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: thumb_Radius),
                    overlayShape:
                        RoundSliderOverlayShape(overlayRadius: overlay_Radius),
                    overlayColor: overlay_Color,
                    thumbColor: thumb_Color,
                    inactiveTrackColor: inactive_Slider_Color,
                    activeTrackColor: active_Slider_Color,
                  ),
                  child: Slider(
                    min: min_Slider_Value,
                    max: max_Slider_Value,
                    value: currentValue.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        currentValue = value.toInt();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: CostumRowWidget(
            top: bottom_containers_margin_top_value,
            bottom: bottom_containers_margin_bottom_value,
            left: bottom_left_Container_left_margin_value,
            right: bottom_left_Container_right_margin_value,
            top2: bottom_containers_margin_top_value,
            bottom2: bottom_containers_margin_bottom_value,
            left2: bottom_righ_Container_left_margin_value,
            right2: bottom_right_Container_right_margin_value,
            widget1: Column(),
            widget2: Column(),
          ),
        ),
        Container(
            width: double.infinity, height: 60.0, color: Color(0xFFEA1556))
      ],
    );
  }
}
