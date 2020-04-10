import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class OpacityPage extends StatelessWidget {
  static const String routeName = "/opacity";

  @override
  Widget build(BuildContext context) {
    final width = context.mdWindowSize == MobileWindowSize.small
        ? context.percentWidth * 100
        : 300.0;

    return VelocityScaffold(
      title: "Opacity",
      body: VStack(
        [
          "VelocityX opacity allows you to control the transparency of a widget."
              .text
              .xl
              .semiBold
              .make(),
          20.heightBox,
          Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: <Widget>[
              [
                "Opacity with 100% value".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.opacity100()\n\neg: Text().opacity100()\n\nIt will make text with 100% opacity")),
              ].vStack().w(width),
              [
                "Opacity with 75% value".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.opacity75()\n\neg: Text().opacity75()\n\nIt will make text with 75% opacity")),
              ].vStack().w(width),
              [
                "Opacity with 50% value".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.opacity50()\n\neg: Text().opacity50()\n\nIt will make text with 50% opacity")),
              ].vStack().w(width),
              [
                "Opacity with 25% value".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.opacity25()\n\neg: Text().opacity25()\n\nIt will make text with 25% opacity")),
              ].vStack().w(width),
              [
                "Opacity with 0% value".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.opacity0()\n\neg: Text().opacity0()\n\nIt will make text with 0% opacity")),
              ].vStack().w(width),
              [
                "Opacity with Custom value".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.opacity(value: [0.0 - 1.0])\n\neg: Text().opacity(value: 0.65)\n\nIt will make text with 65% opacity")),
              ].vStack().w(width),
            ],
          ),
          20.heightBox,
          Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: <Widget>[
              [
                "Here is the example implementing all the opacity values on box"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                10.heightBox,
                Wrap(
                  children: <Widget>[
                    Text(
                      "100%",
                      style: TextStyle(color: Colors.white),
                    )
                        .box
                        .height(90)
                        .width(90)
                        .gray800
                        .alignCenter
                        .make()
                        .opacity100(),
                    Text(
                      "50%",
                      style: TextStyle(color: Colors.white),
                    )
                        .box
                        .height(90)
                        .width(90)
                        .gray800
                        .alignCenter
                        .make()
                        .opacity50(),
                    Text(
                      "25%",
                      style: TextStyle(color: Colors.white),
                    )
                        .box
                        .height(90)
                        .width(90)
                        .gray800
                        .alignCenter
                        .make()
                        .opacity25(),
                    Text(
                      "0%",
                      style: TextStyle(color: Colors.white),
                    )
                        .box
                        .height(90)
                        .width(90)
                        .gray800
                        .alignCenter
                        .make()
                        .opacity0(),
                    Text(
                      "65%",
                      style: TextStyle(color: Colors.white),
                    )
                        .box
                        .height(90)
                        .width(90)
                        .gray800
                        .alignCenter
                        .make()
                        .opacity(value: 0.65),
                  ],
                )
              ].vStack().w(600),
            ],
          )
        ],
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
