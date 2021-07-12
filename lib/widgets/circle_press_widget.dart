import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CirclePressWidget extends StatelessWidget {
  double width;
  double height;
  Function? onPress;
  Widget child;
  Color background;
  double elevation;
  Color? flashColor;

  CirclePressWidget(
      {required this.width,
      required this.height,
      required this.child,
      this.background = Colors.transparent,
      this.onPress,
      this.elevation = 0.0,
      this.flashColor});

  @override
  Widget build(BuildContext context) {

    flashColor = flashColor == null ? Colors.black : flashColor;

    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        child: RawMaterialButton(
          onPressed: () {
            onPress!();
          },
          hoverElevation: 0.0,
          focusElevation: 0.0,
          disabledElevation: 0.0,
          highlightElevation: 0.0,
          hoverColor: flashColor!.withOpacity(0.3),
          focusColor: flashColor!.withOpacity(0.3),
          fillColor: background,
          highlightColor: flashColor!.withOpacity(0.3),
          splashColor: flashColor!.withOpacity(0.3),
          elevation: elevation,
          shape: CircleBorder(),
          child: child,
        ),
      ),
    );
  }
}
