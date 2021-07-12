import 'package:flutter/material.dart';
import 'package:lateinit/lateinit.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  Color colorBackground;
  Color colorText;
  double sizeText;
  double? width;
  Function onClick;
  double radius;
  bool isClick;
  bool isBorder;
  Color colorBorder;
  double elevation;
  double borderSize;

  ButtonWidget({
    required this.title,
    this.colorBackground = Colors.white,
    this.colorText = Colors.black,
    this.sizeText = 2,
    this.width,
    required this.onClick,
    this.isBorder = false,
    this.isClick = true,
    this.colorBorder = Colors.black12,
    this.elevation = LateElevationSize.small,
    this.radius = LateRadiusSize.small,
    this.borderSize = 0.5});

  Size? _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery
        .of(context)
        .size;

    width = width == null ? _size!.width : width;

    return CardWidget(
      width: _size!.width,
      height: LateHeightSize.normal,
      radius: radius,
      isBorder: isBorder,
      borderSize: borderSize,
      elevation: elevation,
      isClick: isClick,
      color: colorBackground,
      colorBorder: colorBorder,
      onClick: () {
        onClick();
      },
      child: Center(
        child: Text(
          title,
          style: LateText.textSemiBold.apply(color: colorText, fontSizeDelta: sizeText),
        ),
      ),
    );
  }
}
