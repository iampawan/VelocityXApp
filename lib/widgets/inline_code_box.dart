import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class InlineCodeBox extends StatelessWidget {
  final Widget data;

  const InlineCodeBox(
    this.data, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return data.box.teal800.p4.roundedSM.make();
  }
}

class InlineCodeBoxText extends StatelessWidget {
  final String data;

  const InlineCodeBoxText(
    this.data, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return data.selectableText.wide.sm.white.bold.make(key: key).px2();
  }
}
