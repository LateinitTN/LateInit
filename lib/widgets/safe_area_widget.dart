import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SafeAreaWidget extends StatelessWidget {
  Widget child;
  Color color;

  SafeAreaWidget({required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Stack(
        children: [
          //Status color
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: kToolbarHeight,
              color: color,
            ),
          ),

          SafeArea(
            child: child,
          )
        ],
      ),
    );
  }
}
