import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void closePage(context, {content = ""}) {
  content == "" ? Navigator.of(context).pop() : Navigator.of(context).pop(content);
}

void closeDelay(context, {content = "", duration = 350}) {
  Future.delayed(Duration(milliseconds: duration), () async {
    if (content != "")
      Navigator.of(context).pop(content);
    else
      Navigator.of(context).pop();
  });
}

Future openPage(page, context, {isMaterial = false}) async {
  if (isMaterial)
    {
      var route = MaterialPageRoute(builder: (BuildContext context) => page);
      await Navigator.push(context, route);
    }
  else
    {
      var route = CupertinoPageRoute(builder: (BuildContext context) => page);
      await Navigator.of(context).push(route);
    }
}

Future openPageDelay(page, context, {isMaterial = false, duration = 350}) async {
  Future.delayed(Duration(milliseconds: duration), () async {
    if (isMaterial)
    {
      var route = MaterialPageRoute(builder: (BuildContext context) => page);
      await Navigator.push(context, route);
    }
    else
    {
      var route = CupertinoPageRoute(builder: (BuildContext context) => page);
      await Navigator.of(context).push(route);
    }
  });
}