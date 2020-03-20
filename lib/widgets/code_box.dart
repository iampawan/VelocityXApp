import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CodeBox extends StatelessWidget {
  final Widget data;

  const CodeBox(
    this.data, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return data.box.teal800.p20.roundedSM.make().py8();
  }
}
