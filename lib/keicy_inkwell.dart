library keicy_ink_well;

import 'package:flutter/material.dart';

class KeicyInkWell extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final bool unfocusable;

  const KeicyInkWell({Key key, this.onTap, @required this.child, this.unfocusable = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (unfocusable) {
          FocusScope.of(context).requestFocus(new FocusNode());
        }
        onTap();
      },
      child: child,
    );
  }
}
