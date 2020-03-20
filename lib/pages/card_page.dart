import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class CardPage extends StatelessWidget {
  static const String routeName = "/card";
  @override
  Widget build(BuildContext context) {
    return VelocityScaffold(
      title: "Card",
      body: VStack(
        [
          "VelocityX provides card with super powers.".text.xl.semiBold.make(),
          20.heightBox,
          "Note 1:".text.bold.make(),
          "When you are done with the card properties then use .make() to complete it as a widget.".text.xl2.blue800.semiBold.make(),
          20.heightBox,
          "Card".text.xl2.make(),
          10.heightBox,
          "You can use any widget and wrap it to a card widget.".text.make(),
          CodeBox(
              CodeBoxText("{anywidget}.card\n\neg: Text('VelocityX').card.make()\n\nIt will produce a text with String as VelocityX inside a card")),
          20.heightBox,
          "Padding".text.xl2.make(),
          10.heightBox,
          "Use padding() method of the card".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText(
              "card.padding(EdgeInsetsGeometry val)\n\neg:card.padding(VelocityX.m12).make()\n\nSets card padding as 12px\n\neg: card.py16.make()\n\nSets card padding as 16px vertically. You can use all predefined paddings as in Padding Notes.")),
          20.heightBox,
          "Color".text.xl2.make(),
          10.heightBox,
          "You can use color getters or color method to set a card color".text.make(),
          CodeBox(CodeBoxText(
              "{anywidget}.card.color(Color val), {anywidget}.card.{colorName}{number}\n\neg: Text('VelocityX').card.color(Colors.red).make()\n\nIt will produce a card with red material color\n\neg: Text('VelocityX').card.blue700.make()\n\nIt will produce a card with Blue700 color")),
          10.heightBox,
          "Use a hex color".text.xl.make(),
          10.heightBox,
          CodeBox(CodeBoxText(
              "'VelocityX'.card.hexColor(String colorHex).make();\n\neg: 'VelocityX'.card.hexColor(#ffffff).make();\n\nIt will produce a card with white color.")),
          20.heightBox,
          "Zero Elevation".text.xl2.make(),
          10.heightBox,
          "VelocityX offers zero card".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Velocityx'.card.zero.white.make();\n\n Card with zero elevation")),
          10.heightBox,
          "Use a custom elevation".text.xl.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'VelocityX'.card.elevation(10).make();\n\nIt will produce a card with 10 elevation.")),
          20.heightBox,
          "Circular Card".text.xl2.make(),
          10.heightBox,
          "VelocityX offers circular card".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Velocityx'.card.circular.white.make();\n\n Card with circular border/shape.")),
          20.heightBox,
          "Zero Circular Card".text.xl2.make(),
          10.heightBox,
          "VelocityX offers zero circular card".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Velocityx'.card.zeroCircular.white.make();\n\n Card with zero elevation and circular shape")),
          20.heightBox,
          "Shadow Color".text.xl2.make(),
          10.heightBox,
          "VelocityX offers shadowColor method".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Velocityx'.card.white.shadowColor(Colors.red).make();\n\n Card with shadow as red color")),
          20.heightBox,
          "Rounding (Border radius)".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined rounded radius as card properties".text.make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "roundedNone - 0",
              "roundedSM   - 7.5",
              "rounded     - 15",
              "roundedLg   - 30",
              "roundedFull - circle",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText("eg: 'Velocityx'.card.roundedLg.make();\n\nSets the border radius as 15")),
          10.heightBox,
          "Set a custom rounding".text.xl.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'VelocityX'.card.withRounded(20).make();\n\nsets custom border radius as 20.")),
          "Using all together".text.xl2.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Card'.text.xl4.semiBold.makeCentered().card.roundedLg.make().whOneForth(context)")),
          "Output:".text.make(),
          10.heightBox,
          "Card".text.xl4.semiBold.makeCentered().card.roundedLg.make().whOneForth(context),
        ],
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
