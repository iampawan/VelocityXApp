import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class PaddingPage extends StatelessWidget {
  static const String routeName = "/padding";
  @override
  Widget build(BuildContext context) {
    final width = context.mdWindowSize == MobileWindowSize.small
        ? context.percentWidth * 100
        : 300.0;
    return VelocityScaffold(
      title: "Padding",
      body: VStack(
        [
          "VelocityX includes a predefined paddings to use them easily with a single click."
              .text
              .xl
              .semiBold
              .make(),
          10.heightBox,
          Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: <Widget>[
              [
                "Custom Padding from all directions"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.p({number})\n\neg: Text().p(10)\n\nIt will give 10px paddings from all directions.")),
              ].vStack().w(width),
              [
                "Custom Padding from left, top, right & bottom"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.pLTRB({l,t,r,b})\n\neg: Text().pLTRB(1,2,3,4)\n\nIt will give 1px left, 2px top, 3px right, 4px bottom paddings.")),
              ].vStack().w(width),
              [
                "Custom Padding symmetrically".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "anywidget.pSymmetric(v:{number},h:{number})\n\neg: Text().pSymmetric(v:8,h:16)\n\nIt will give 8px vertical and 16px horizontal paddings.")),
              ].vStack().w(width),
              [
                "Custom Padding in only specified directions"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.pOnly({sides}:{number})\n\neg: Text().pOnly(left:8,top:16)\n\nIt will give 8px left and 16px top paddings.")),
              ].vStack().w(width),
              [
                "Padding inside a box(container)".text.xl.bold.blue800.make(),
                CodeBox(CodeBoxText(
                    "box.p{number}\n\neg: box.p12.make()\n\nIt will give 12px padding inside the container.\n\nSimilarly you can use all other padding methods with this.")),
              ].vStack().w(width)
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
                "To pad a widget from all directions\n"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.p{number}()\n\neg: Text().p8()\n\nIt will give 8px paddings from all directions.")),
                "Other available paddings".text.xl.bold.blue800.make(),
                VelocityDiscList(
                  [
                    "p0()",
                    "p1()",
                    "p2()",
                    "p4()",
                    "p8()",
                    "p12()",
                    "p16()",
                    "p20()",
                    "p24()",
                    "p32()",
                    "p64()",
                  ],
                  fontSize: 18,
                ).w(width)
              ].vStack(),
              [
                "To pad a widget horizontally\n(x for x-axis)"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.px{number}\n\neg: Text().px8()\n\nIt will give 8px horizontally.")),
                "Other available paddings".text.xl.bold.blue800.make(),
                VelocityDiscList(
                  [
                    "px0()",
                    "px1()",
                    "px2()",
                    "px4()",
                    "px8()",
                    "px12()",
                    "px16()",
                    "px20()",
                    "px24()",
                    "px32()",
                    "px64()",
                  ],
                  fontSize: 18,
                ).w(width),
              ].vStack(),
              [
                "To pad a widget vertically\n(y for y-axis)"
                    .text
                    .xl
                    .bold
                    .blue800
                    .make(),
                CodeBox(CodeBoxText(
                    "anywidget.py{number}\n\neg: Text().py16()\n\nIt will give 16px vertically.")),
                "Other available paddings".text.xl.bold.blue800.make(),
                VelocityDiscList(
                  [
                    "py0()",
                    "py1()",
                    "py2()",
                    "py4()",
                    "py8()",
                    "py12()",
                    "py16()",
                    "py20()",
                    "py24()",
                    "py32()",
                    "py64()",
                  ],
                  fontSize: 18,
                ).w(width),
              ].vStack()
            ],
          )
        ],
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
