import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/velocity_app.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return VelocityScaffold(
      title: "VelocityX",
      body: VStack(
        [
          ThreeDots().py16(),
          VelocityApp.utilityText.text.teal500.center.xl3.wide.make(),
          VelocityApp.rapidText.text.semiBold.center.xl3.wide.orange500.make(),
          20.heightBox,
          VelocityApp.giantFrameworkText.text.center.xl.wide.gray700.make(),
          20.heightBox,
          [
            "There is one golden rule".text.center.xl2.semiBold.make(),
            5.heightBox,
            "Use methods for (widgets & setting a value) and getters for (properties & getting a value)".text.center.bold.blue900.xl.make()
          ]
              .vStack(crossAlignment: CrossAxisAlignment.center)
              .p8()
              .box
              .p12
              .linearGradient([VelocityX.orangeColor300, VelocityX.tealColor300])
              .rounded
              .make(),
          20.heightBox,
          VelocityBox().height(3).blue700.make(),
          20.heightBox,
          "Getting Started".text.blue700.xl4.extraBold.wider.bold.make(),
          10.heightBox,
          "Installation Guide".text.xl2.semiBold.bold.make(),
          10.heightBox,
          "Add the following dependency into your pubspec.yaml file".text.sm.semiBold.bold.make(),
          10.heightBox,
          CodeBox(["dependencies:".text.wide.white.make(), "velocity_x: ^0.1.0".text.wide.white.make().px16()].vStack()),
          10.heightBox,
          "You can install the above dependency by running the following code with pub:".text.make(),
          10.heightBox,
          CodeBox("pub get".text.white.make()),
          10.heightBox,
          "With Flutter".text.make(),
          10.heightBox,
          CodeBox("flutter pub get".text.white.make()),
          "Now in your Dart code, you can import the components that are necessary for your application".text.make(),
          10.heightBox,
          CodeBox("import 'package:velocity_x/velocity_x.dart' ;".text.center.wide.white.make()),
        ],
        crossAlignment: CrossAxisAlignment.center,
      ).w64(context).centered().scrollVertical(),
    );
  }
}

class ThreeDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      15.squareBox.box.teal400.roundedFull.make(),
      5.widthBox,
      15.squareBox.box.orange400.roundedFull.make(),
      5.widthBox,
      15.squareBox.box.blue400.roundedFull.make()
    ].hStack();
  }
}
