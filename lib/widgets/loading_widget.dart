import 'dart:ui';
import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

// ignore: must_be_immutable
class LoadingWidget extends StatelessWidget {
  var color;
  double height;
  double width;

  LoadingWidget(
      {this.color,
      this.width = LateHeightSize.small,
      this.height = LateHeightSize.small});

  @override
  Widget build(BuildContext context) {
    color = color == null ? Colors.black45 : color;

    return Stack(
      children: [
        //Blur Background
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black12.withOpacity(0.05),
          ),
        ),

        // CircleProgress()
        Padding(
          padding: EdgeInsets.all(LatePaddingSize.semiBig),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                    width: LateHeightSize.small,
                    height: LateHeightSize.small,
                    child: ClipOval(
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(color)),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
