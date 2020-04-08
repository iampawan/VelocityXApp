import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class SizeBoxPage extends StatelessWidget {
  static const String routeName = "/sizebox";
  @override
  Widget build(BuildContext context) {
    final width = context.mdWindowSize == MobileWindowSize.small ? context.percentWidth * 100 : 300.0;
    return VelocityScaffold(
      title: "Size Box",
      body: VStack(
        [
          "VelocityX includes a predefined size boxes to use them easily with a single click.".text.xl.semiBold.make(),
          20.heightBox,
          "Available Widgets".text.xl2.make(),
          10.heightBox,
          "VelocityX offers some regularly used widgets".text.make(),
          Wrap(runSpacing: 20, spacing: 20, alignment: WrapAlignment.start, direction: Axis.horizontal, children: <Widget>[
            CodeBox(CodeBoxText("WidthBox(width)\n\neg: WidthBox(20)\n\nIt will provide 20px width")).w(width),
            CodeBox(CodeBoxText("HeightBox(height)\n\neg: HeightBox(20)\n\nIt will provide 20px height")).w(width),
            CodeBox(CodeBoxText("SquareBox(size)\n\neg: SquareBox(20)\n\nIt will provide 20px width & height")).w(width),
          ]),
          20.heightBox,
          [
            "Custom width & height".text.xl.bold.blue800.make(),
            CodeBox(CodeBoxText("anywidget.wh(px,px)\n\neg: Text().wh(10,10)\n\nIt will provide 10px width & height.")),
          ].vStack().w(width),
          20.heightBox,
          Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: <Widget>[
              [
                "To give % of width to a widget".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText("anywidget.w{number}()\n\neg: Text().w8(context)\n\nIt will give 8% width.")),
                "Other available widths".text.xl.bold.blue800.make(),
                VxDiscList(
                  [
                    "w0(context)",
                    "w1(context)",
                    "w2(context)",
                    "w4(context)",
                    "w8(context)",
                    "w10(context)",
                    "w15(context)",
                    "w16(context)",
                    "w20(context)",
                    "w24(context)",
                    "w32(context)",
                    "w40(context)",
                    "w48(context)",
                    "w56(context)",
                    "w60(context)",
                    "wHalf(context)",
                    "wOneThird(context)",
                    "wTwoThird(context)",
                    "wOneForth(context)",
                    "wThreeForth(context)",
                    "wFourFifth(context)",
                    "wFull(context)",
                  ],
                  fontSize: 18,
                ).w(width)
              ].vStack(),
              [
                "To give % of height to a widget".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText("anywidget.h{number}\n\neg: Text().h8(context)\n\nIt will give 8% height.")),
                "Other available heights".text.xl.bold.blue800.make(),
                VxDiscList(
                  [
                    "h0(context)",
                    "h1(context)",
                    "h2(context)",
                    "h4(context)",
                    "h8(context)",
                    "h10(context)",
                    "h15(context)",
                    "h16(context)",
                    "h20(context)",
                    "h24(context)",
                    "h32(context)",
                    "h40(context)",
                    "h48(context)",
                    "h56(context)",
                    "h60(context)",
                    "hHalf(context)",
                    "hOneThird(context)",
                    "hTwoThird(context)",
                    "hOneForth(context)",
                    "hThreeForth(context)",
                    "hFourFifth(context)",
                    "hFull(context)",
                  ],
                  fontSize: 18,
                ).w(width),
              ].vStack(),
              [
                "To give % of width & height both to a widget".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText("anywidget.wh{number}\n\neg: Text().wh(8)\n\nIt will give 8% height.")),
                "Other available WidthHeight".text.xl.bold.blue800.make(),
                VxDiscList(
                  [
                    "wh0(context)",
                    "wh1(context)",
                    "wh2(context)",
                    "wh4(context)",
                    "wh8(context)",
                    "wh10(context)",
                    "wh15(context)",
                    "wh16(context)",
                    "wh20(context)",
                    "wh24(context)",
                    "wh32(context)",
                    "wh40(context)",
                    "wh48(context)",
                    "wh56(context)",
                    "wh60(context)",
                    "whHalf(context)",
                    "whOneThird(context)",
                    "whTwoThird(context)",
                    "whOneForth(context)",
                    "whThreeForth(context)",
                    "whFourFifth(context)",
                    "whFull(context)",
                  ],
                  fontSize: 18,
                ).w(width),
              ].vStack(),
            ],
          )
        ],
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
