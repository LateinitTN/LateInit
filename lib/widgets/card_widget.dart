import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {
  Widget child;
  Color color;
  double? width;
  double? height;
  Function? onClick;
  double radius;
  bool isClick;
  bool isBorder;
  Color colorBorder;
  double elevation;
  double borderSize;

  CardWidget(
      {
      required this.child,
      this.color = Colors.white,
      this.onClick,
      this.radius = LateRadiusSize.normal,
      this.isClick = true,
      this.elevation = 1,
      this.isBorder = false,
      this.colorBorder = Colors.black12,
      this.borderSize = 1,
      this.width,
      this.height});

  Size? _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    width = width == null ? _size!.width : width;
    height = height == null ? LatePaddingSize.big : height;

    return Container(
      width: width,
      height: height,
      child: isClick
          ? Card(
              margin: EdgeInsets.zero,
              color: color,
              semanticContainer: true,
              elevation: elevation,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: isBorder
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                      side: BorderSide(
                        color: colorBorder,
                        width: borderSize,
                      ))
                  : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                    ),
              child: InkWell(
                onTap: () {
                  onClick!();
                },
                child: child,
              ),
            )
          : Card(
              margin: EdgeInsets.zero,
              color: color,
              semanticContainer: true,
              elevation: elevation,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              child: child,
            ),
    );
  }
}
