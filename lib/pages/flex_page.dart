import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/inline_code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class FlexPage extends StatelessWidget {
  static const String routeName = "/flex";
  @override
  Widget build(BuildContext context) {
    final width = context.mdWindowSize == MobileWindowSize.small
        ? context.percentWidth * 100
        : 300.0;
    return VelocityScaffold(
      title: 'Flex',
      body: VStack(
        [
          "VelocityX includes a predefined Flex box to use them easily with a single click."
              .text
              .xl
              .semiBold
              .make(),
          20.heightBox,
          HStack([
            "Regulary used Flex Widgets are".text.make(),
            InlineCodeBox(InlineCodeBoxText("VelocityXBlock")),
            " ".text.make(),
            InlineCodeBox(InlineCodeBoxText("VelocityXInlineBlock")),
            " ".text.make(),
            InlineCodeBox(InlineCodeBoxText("VStack")),
            " ".text.make(),
            InlineCodeBox(InlineCodeBoxText("HStack")),
            " ".text.make(),
            InlineCodeBox(InlineCodeBoxText("ZStack")),
            ".".text.make(),
          ]),
          20.heightBox,
          "VelocityXBlock".text.xl2.blue800.semiBold.make(),
          10.heightBox,
          "VelocityXBlock creates a Block Level Element.To cause a child to expand to fill the available horizontal space."
              .text
              .make(),
          10.heightBox,
          "Here is the example of VelocityXBlock".text.make(),
          10.heightBox,
          Wrap(runSpacing: 20, spacing: 20, alignment: WrapAlignment.start, direction: Axis.horizontal, children: <Widget>[
            CodeBox(CodeBoxText('VelocityXBlock(\n\tchildren: <Widget>[\n\t\t\tVelocityBox(    //Using Velocity box to get blue background for block Element.\n\t\t\t\tchild: \"I am inside VelocityXBlock\".text.make().p20()).blue300.make()\n\t\t],\n\t)')).w(width+500),
            
          ]),
            10.heightBox,
             "Working Example of above code snippet".text.bold.make(),
              10.heightBox,
          VelocityXBlock(
            children: <Widget>[
              VelocityBox(child: "I am inside VelocityXBlock".text.make().p20())
                  .blue300
                  .make()
            ],
          ),
           30.heightBox,
          "VelocityXInlineBlock".text.xl2.blue800.semiBold.make(),
          10.heightBox,
          "VelocityXInlineBlock creates a Inline Block Level Element.A widget that displays its children in a horizontal array."
              .text
              .make(),
          10.heightBox,
          "Here is the example of VelocityXInlineBlock".text.make(),
          10.heightBox,
          Wrap(runSpacing: 20, spacing: 20, alignment: WrapAlignment.start, direction: Axis.horizontal, children: <Widget>[
            CodeBox(CodeBoxText('VelocityXBlock(\n\tchildren: <Widget>[\n\t\t\tVelocityBox(    //Using Velocity box to get blue background for block Element.\n\t\t\t\tchild: \"I am First Child in VelocityXInlineBlock\".text.make().p20()).blue300.make(),\n\t\t\tVelocityBox( \n\t\t\t\tchild: \"I Second Child in VelocityXInlineBlock\".text.make().p20()).yellow300.make(),\n\t\t\tVelocityBox(\n\t\t\t\tchild: \"I Third Child in VelocityXInlineBlock\".text.make().p20()).red300.make(),\n\t\t],\n\t)')).w(width+500),
            
          ]),
            10.heightBox,
             "Working Example of above code snippet".text.bold.make(),
              10.heightBox,
          VelocityXInlineBlock(
            children: <Widget>[
              VelocityBox(child: "I am First Child in VelocityXInlineBlock".text.make().p20())
                  .blue300
                  .make(),
                  VelocityBox(child: "I Second Child in VelocityXInlineBlock".text.make().p20())
                  .yellow300
                  .make(),
                   VelocityBox(child: "I Second Child in VelocityXInlineBlock".text.make().p20())
                  .red300
                  .make()
            ],
          )
        ],
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
