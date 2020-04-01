import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/velocity_app.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return VelocityScaffold(
      bgColor: VelocityX.whiteColor,
      title: "VelocityX",
      body: VStack(
        [
          ThreeDots().py16(),
          VelocityApp.utilityText.text.blue800.center.xl3.wide.make(),
          VelocityApp.rapidText.text.semiBold.center.xl3.wide.teal500.make(),
          20.heightBox,
          Image.asset("assets/designer.png"),
          20.heightBox,
          VelocityApp.giantFrameworkText.text.center.xl.wide.gray700.make(),
          20.heightBox,
          [
            "There is one golden rule".selectableText.center.xl2.semiBold.make(),
            5.heightBox,
            "Use methods for (widgets & setting a value) and getters for (properties & getting a value)".selectableText.center.bold.blue900.xl.make()
          ].vStack(crossAlignment: CrossAxisAlignment.center).p8().box.p12.linearGradient([VelocityX.teal200, VelocityX.blue400]).roundedLg.shadowXl.make(),
          20.heightBox,
          VelocityBox().height(3).blue700.make(),
          20.heightBox,
          "Getting Started".text.blue700.xl4.extraBold.wider.bold.make(),
          10.heightBox,
          Image.asset("assets/setup.png"),
          20.heightBox,
          "Note:".text.bold.make(),
          "For better readability of the code use 'dart.lineLength': 200 in your fav IDE for dart formatting.".text.medium.center.blue800.semiBold.make(),
          20.heightBox,
          "Installation Guide".text.xl2.semiBold.bold.make(),
          10.heightBox,
          "Add the following dependency into your pubspec.yaml file".text.sm.semiBold.bold.make(),
          10.heightBox,
          CodeBox([CodeBoxText("dependencies:"), CodeBoxText("velocity_x: ${VelocityApp.versionText}").px16()].vStack()),
          10.heightBox,
          "You can install the above dependency by running the following code with pub:".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("pub get")),
          10.heightBox,
          "With Flutter".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("flutter pub get")),
          "Now in your Dart code, you can import the components that are necessary for your application".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("import 'package:velocity_x/velocity_x.dart' ;")),
          40.heightBox,
          "Made with Flutter using VelocityX".text.xl.black.center.make().p16()
        ],
        crossAlignment: CrossAxisAlignment.center,
      ).w64(context).centered().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}

class ThreeDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [15.squareBox.box.teal400.roundedFull.make(), 5.widthBox, 15.squareBox.box.blue500.roundedFull.make(), 5.widthBox, 15.squareBox.box.gray700.roundedFull.make()].hStack();
  }
}
