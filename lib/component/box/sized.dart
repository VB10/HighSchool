import 'package:flutter/material.dart';

class CustomSizedBox extends StatefulWidget {
  final Widget child;
  final double height;

  CustomSizedBox({Key key, this.child, this.height}) : super(key: key);

  _CustomSizedBoxState createState() => _CustomSizedBoxState();
}

class _CustomSizedBoxState extends State<CustomSizedBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.height,
      child: widget.child,
    );
  }
}
