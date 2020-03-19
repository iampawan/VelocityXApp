import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class TextPage extends StatelessWidget {
  static const String routeName = "/text";
  @override
  Widget build(BuildContext context) {
    return VelocityScaffold(
      title: "Text",
      body: VStack([
        "VelocityX provides text with super powers.".text.xl.semiBold.make(),
      ]).p16().scrollVertical(),
    );
  }
}
