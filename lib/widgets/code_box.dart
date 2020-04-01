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
    return data.box.gray800.p20.roundedSM.make(key: key).py8();
  }
}

class CodeBoxText extends StatelessWidget {
  final String data;

  const CodeBoxText(
    this.data, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return data.selectableText.wide.lg.white.make(key: key);
  }
}
