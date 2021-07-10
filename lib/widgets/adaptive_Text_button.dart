import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveTextButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveTextButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    );

    return Platform.isIOS
        ? CupertinoButton(
            child: textWidget,
            onPressed: handler,
          )
        : TextButton(
            child: textWidget,
            onPressed: handler,
          );
  }
}
