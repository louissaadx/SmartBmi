import 'package:flutter/material.dart';
import 'package:smart_bmi_calculator/constants.dart';

class CostumCoreContainer extends StatelessWidget {
  final double leftCostumCoreContainerMargin;
  final double rightCostumCoreContainerMargin;
  final double topCostumCoreContainerMargin;
  final double bottomCostumCoreContainerMargin;
  final Widget widget;
  CostumCoreContainer(
      {@required this.leftCostumCoreContainerMargin,
      @required this.rightCostumCoreContainerMargin,
      @required this.topCostumCoreContainerMargin,
      @required this.bottomCostumCoreContainerMargin,
      @required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(costum_core_container_border_radius),
        color: costum_Core_Container_Color,
      ),
      margin: EdgeInsets.only(
        left: leftCostumCoreContainerMargin,
        right: rightCostumCoreContainerMargin,
        top: topCostumCoreContainerMargin,
        bottom: bottomCostumCoreContainerMargin,
      ),
      child: Center(
        child: widget,
      ),
    );
  }
}

