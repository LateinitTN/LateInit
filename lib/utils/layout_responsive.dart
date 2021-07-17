import 'package:flutter/material.dart';
import 'package:lateinit/lateinit.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget? small;
  final Widget? medium ;
  final Widget? large;

  const ResponsiveLayout({
    this.small,
    this.medium,
    this.large,
  });

  static int smallLimit = 640;
  static int mediumLimit = 1007;

  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width <= smallLimit;

  static bool isMedium(BuildContext context) =>
      MediaQuery.of(context).size.width > smallLimit &&
      MediaQuery.of(context).size.width <= mediumLimit;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width > mediumLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      logMessage("WIDTH: ${constraints.maxWidth}");
      logMessage("HEIGHT: ${constraints.maxHeight}");
      if (constraints.maxWidth <= smallLimit) return small!;
      else if (constraints.maxWidth <= mediumLimit) return medium!;
      else return large!;
    });
  }
}
