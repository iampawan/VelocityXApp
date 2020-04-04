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
            "Regulary used Flex Widgets are ".text.make(),
            5.widthBox,
            InlineCodeBox(InlineCodeBoxText("VelocityXBlock")),
            10.widthBox,
            InlineCodeBox(InlineCodeBoxText("VelocityXInlineBlock")),
            10.widthBox,
            InlineCodeBox(InlineCodeBoxText("VStack")),
            10.widthBox,
            InlineCodeBox(InlineCodeBoxText("HStack")),
            10.widthBox,
            InlineCodeBox(InlineCodeBoxText("ZStack")),
            10.widthBox,
          ]),
          20.heightBox,
          "VelocityXBlock".text.xl2.blue800.semiBold.make(),
          10.heightBox,
          "VelocityXBlock creates a Block Level Element. To cause a child to expand to fill the available horizontal space."
              .text
              .make(),
          10.heightBox,
          "Here is the example of VelocityXBlock".text.make(),
          10.heightBox,
          Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: <Widget>[
                CodeBox(CodeBoxText(
                        'VelocityXBlock(\n\tchildren: <Widget>[\n\t\t\tVelocityBox(    //Using Velocity box to get blue background for block Element.\n\t\t\t\tchild: \"I am inside VelocityXBlock\".text.make().p20()).blue300.make()\n\t\t],\n\t)'))
                    .w(width + 500),
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
          "VelocityXInlineBlock creates a Inline Block Level Element. A widget that displays its children in a horizontal array."
              .text
              .make(),
          10.heightBox,
          "Here is the example of VelocityXInlineBlock".text.make(),
          10.heightBox,
          Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: <Widget>[
                CodeBox(CodeBoxText(
                        'VelocityXBlock(\n\tchildren: <Widget>[\n\t\t\tVelocityBox(    //Using Velocity box to get blue background for block Element.\n\t\t\t\tchild: \"I am First Child in VelocityXInlineBlock\".text.make().p20()).blue300.make(),\n\t\t\tVelocityBox( \n\t\t\t\tchild: \"I am Second Child in VelocityXInlineBlock\".text.make().p20()).yellow300.make(),\n\t\t\tVelocityBox(\n\t\t\t\tchild: \"I am Third Child in VelocityXInlineBlock\".text.make().p20()).red300.make(),\n\t\t],\n\t)'))
                    .w(width + 500),
              ]),
          10.heightBox,
          "Working Example of above code snippet".text.bold.make(),
          10.heightBox,
          VelocityXInlineBlock(
            children: <Widget>[
              VelocityBox(
                      child: "I am First Child in VelocityXInlineBlock"
                          .text
                          .make()
                          .p20())
                  .blue300
                  .make(),
              VelocityBox(
                      child: "I am Second Child in VelocityXInlineBlock"
                          .text
                          .make()
                          .p20())
                  .yellow300
                  .make(),
              VelocityBox(
                      child: "I am Second Child in VelocityXInlineBlock"
                          .text
                          .make()
                          .p20())
                  .red300
                  .make()
            ],
          ),
          20.heightBox,
          "VStack".text.xl2.blue800.semiBold.make(),
          10.heightBox,
          "VStack is a widget that displays its children in a vertical array. VStack is basically an alternative to a Column Widget in a VelocityX.The best example of VStack is the Current page which your viewing."
              .text
              .make(),
          10.heightBox,
          "Here is the example of VStack".text.make(),
          10.heightBox,
          Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: <Widget>[
                CodeBox(CodeBoxText(
                        'VStack(\n\t\t[\n\t\t\tVelocityBox(child:"I am First element in VStack".text.make().p20()).red300.make(),\n\t\t\tVelocityBox(child:"I am Secondelement in VStack".text.make().p20()).green300.make(),\n\t\t\tVelocityBox(child:"I am Third element in VStack".text.make().p20()).yellow300.make(),\n\t\t],\n)'))
                    .w(width + 500),
              ]),
          10.heightBox,
          "Working Example of above code snippet".text.bold.make(),
          10.heightBox,
          VStack([
            VelocityBox(child: "I am First element in VStack".text.make().p20())
                .red300
                .make(),
            VelocityBox(
                    child: "I am Second element in VStack".text.make().p20())
                .green300
                .make(),
            VelocityBox(child: "I am Third element in VStack".text.make().p20())
                .yellow300
                .make()
          ]),
          20.heightBox,
          "HStack".text.xl2.blue800.semiBold.make(),
          10.heightBox,
          "HStack is a widget that displays its children in a Horizontal array. VStack is basically an alternative to a Row Widget in a VelocityX."
              .text
              .make(),
          10.heightBox,
          "Here is the example of HStack".text.make(),
          10.heightBox,
          Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: <Widget>[
                CodeBox(CodeBoxText(
                        'HStack(\n\t\t[\n\t\t\tVelocityBox(child:"I am First element in HStack".text.make().p20()).red300.make(),\n\t\t\tVelocityBox(child:"I am Secondelement in HStack".text.make().p20()).green300.make(),\n\t\t\tVelocityBox(child:"I am Third element in HStack".text.make().p20()).yellow300.make(),\n\t\t],\n)'))
                    .w(width + 500),
              ]),
          10.heightBox,
          "Working Example of above code snippet".text.bold.make(),
          10.heightBox,
          HStack([
            VelocityBox(child: "I am First element in VStack".text.make().p20())
                .red300
                .make(),
            VelocityBox(
                    child: "I am Second element in VStack".text.make().p20())
                .green300
                .make(),
            VelocityBox(child: "I am Third element in VStack".text.make().p20())
                .yellow300
                .make()
          ]),
          20.heightBox,
          "ZStack".text.xl2.blue800.semiBold.make(),
          10.heightBox,
          "ZStack is a widget that overlaps and displays its children in a simple way, for example having some text and an image or having one VelocityBox on anthore. Full control can be taken by using normal flutter widgets inside ZStack Widget."
              .text
              .make(),
          10.heightBox,
          "Here is the example of ZStack".text.make(),
          10.heightBox,
          Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: <Widget>[
                CodeBox(CodeBoxText(
                        'ZStack(\n\t\t[\n\t\t\tVelocityBox(child:"I am First element in HStack".text.make().p20()).red300.make(),\n\t\t\tPadding(\n\t\t\t\tpadding: const EdgeInsets.all(20.0), \n\t\t\t\tchild: VelocityBox(child: "I am Second element in VStack".text.make().p20()).green300.make(),\n\t\t\t),\n\t\t\tPadding(\n\t\t\t\tpadding: const EdgeInsets.all(20.0), \n\t\t\t\tchild: VelocityBox(child: "I am Second element in VStack".text.make().p20()).green300.make(),\n\t\t\t\n\t\t\t)\n\t\t]\n)'))
                    .w(width + 600),
              ]),
          10.heightBox,
          "Working Example of above code snippet".text.bold.make(),
          10.heightBox,
          ZStack([
            VelocityBox(child: "I am First element in VStack".text.make().p20())
                .red300
                .make(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: VelocityBox(
                      child: "I am Second element in VStack".text.make().p20())
                  .green300
                  .make(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: VelocityBox(
                      child: "I am Third element in VStack".text.make().p20())
                  .yellow300
                  .make(),
            )
          ]),
        ],
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
