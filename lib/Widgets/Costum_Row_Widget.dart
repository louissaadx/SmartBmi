import 'package:flutter/material.dart';
import 'Costum_Core_Container.dart';

class CostumRowWidget extends StatelessWidget {
  final double top, top2;
  final double bottom, bottom2;
  final double left, left2;
  final double right, right2;
  final Widget widget1 , widget2;

  CostumRowWidget(
      {@required this.top,
      @required this.bottom,
      @required this.left,
      @required this.right,
      @required this.top2,
      @required this.bottom2,
      @required this.left2,
      @required this.right2,
      @required this.widget1,
      @required this.widget2});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: CostumCoreContainer(
            leftCostumCoreContainerMargin: left,
            rightCostumCoreContainerMargin: right,
            topCostumCoreContainerMargin: top,
            bottomCostumCoreContainerMargin: bottom,
            widget: widget1,
          ),
        ),
        Expanded(
          child: CostumCoreContainer(
            leftCostumCoreContainerMargin: left2,
            rightCostumCoreContainerMargin: right2,
            topCostumCoreContainerMargin: top2,
            bottomCostumCoreContainerMargin: bottom2,
            widget: widget2,
          ),
        ),
      ],
    );
  }
}
