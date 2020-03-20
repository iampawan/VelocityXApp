import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class BoxPage extends StatelessWidget {
  static const String routeName = "/box";
  @override
  Widget build(BuildContext context) {
    return VelocityScaffold(
      title: "Box (Container)",
      body: VStack(
        [
          "VelocityX provides box with super powers.".text.xl.semiBold.make(),
          20.heightBox,
          "Note 1:".text.bold.make(),
          "When you are done with the box properties then use .make() to complete it as a widget.".text.xl2.blue800.semiBold.make(),
          10.heightBox,
          "Note 2:".text.bold.make(),
          "Use .box to use it with any widget & VelocityBox() to use it separately.".text.xl2.blue800.semiBold.make(),
          20.heightBox,
          "Box".text.xl2.make(),
          10.heightBox,
          "You can use any widget and wrap it to a box widget.".text.make(),
          CodeBox(CodeBoxText("{anywidget}.box\n\neg: Text('VelocityX').box.make()\n\nIt will produce a text with String as VelocityX inside a Box")),
          10.heightBox,
          "You can use velocityx box directly as well.".text.make(),
          CodeBox(
            CodeBoxText(
                "VelocityBox({child:anychild}).red500\n\neg: VelocityBox().red500.round.make()\n\nIt will produce a box with color as red500 and rounded shape."),
          ),
          20.heightBox,
          "Height & Width".text.xl2.make(),
          10.heightBox,
          "Use height() & width() methods of the box".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("VelocityBox().width(px)\n\neg: VelocityBox().width(100).make()\n\nSets box width as 100px")),
          CodeBox(CodeBoxText("VelocityBox().height(px)\n\neg: VelocityBox().height(100).make()\n\nSets box height as 100px")),
          CodeBox(CodeBoxText("box.width({px}.height(px)\n\neg: box.width(500).height(100).make()\n\nSets box width as 500px & height as 100px")),
          10.heightBox,
          "Note:".text.bold.make(),
          "You can use VelocityX class to provide predefined EdgeInsets value.\n\neg: VelocityX.m12 -> all\n\neg: VelocityX.mV12 -> Vertical\n\neg: VelocityX.mH12 -> Horizontal"
              .text
              .xl2
              .blue800
              .semiBold
              .make(),
          20.heightBox,
          "Note:".text.bold.make(),
          "You can use VelocityX class to provide predefined pixel values too.\n\neg: VelocityX.dp0 to VelocityX.dp64"
              .text
              .xl2
              .blue800
              .semiBold
              .make(),
          20.heightBox,
          "Padding & Margin".text.xl2.make(),
          10.heightBox,
          "Use padding() & margin() methods of the box".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText(
              "VelocityBox().padding(EdgeInsetsGeometry val)\n\neg: VelocityBox().padding(VelocityX.m12).make()\n\nSets box padding as 12px\n\neg: VelocityBox().py16.make()\n\nSets box padding as 16px vertically. You can use all predefined paddings as in Padding Notes.")),
          CodeBox(CodeBoxText(
              "VelocityBox().margin(EdgeInsetsGeometry val)\n\neg: VelocityBox().margin(VelocityX.m12).make()\n\nSets box margin as 12px")),
          20.heightBox,
          "Color".text.xl2.make(),
          10.heightBox,
          "You can use color getters or color method to set a box color".text.make(),
          CodeBox(CodeBoxText(
              "{anywidget}.box.color(Color val), {anywidget}.box.{colorName}{number}\n\neg: Text('VelocityX').box.color(Colors.red).make()\n\nIt will produce a box with red material color\n\neg: Text('VelocityX').box.blue700.make()\n\nIt will produce a box with Blue700 color")),
          10.heightBox,
          "Use a hex color".text.xl.make(),
          10.heightBox,
          CodeBox(CodeBoxText(
              "'VelocityX'.box.hexColor(String colorHex).make();\n\neg: 'VelocityX'.box.hexColor(#ffffff).make();\n\nIt will produce a box with white color.")),
          20.heightBox,
          "Alignment".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined alignments as box properties".text.make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "alignTopCenter    - Alignment.topCenter",
              "alignTopLeft      - Alignment.topLeft",
              "alignTopRight     - Alignment.topRight",
              "alignCenter       - Alignment.center",
              "alignCenterLeft   - Alignment.centerLeft",
              "alignCenterRight  - Alignment.centerRight",
              "alignBottomCenter - Alignment.bottomCenter",
              "alignBottomLeft   - Alignment.bottomLeft",
              "alignBottomRight  - Alignment.bottomRight",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText("eg: 'VelocityX'.box.alignCenter.make();\n\nSets the alignment as Center")),
          10.heightBox,
          "Set a custom alignment".text.xl.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'VelocityX'.box.alignment(Alignment(10,20)).make();\n\nwhere 10,20 are the x,y aligment.")),
          20.heightBox,
          "Shadow".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined shadows as box properties".text.make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "shadow",
              "shadowXs",
              "shadowSm",
              "shadowMd",
              "shadowLg",
              "shadowXl",
              "shadow2xl",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText("eg: 'Velocityx'.box.shadow2xl.make();\n\nSets the shadow as 2xl")),
          10.heightBox,
          "Set a shadow outline".text.xl.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'VelocityX'.box.shadowOutline(Colors.black).make();\n\nsets shadow outline with black color.")),
          20.heightBox,
          "Transform".text.xl2.make(),
          10.heightBox,
          "VelocityX offers transform method".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Velocityx'.box.transform(Matrix4.identity()).make();")),
          20.heightBox,
          "Rounding (Border radius)".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined rounded radius as box properties".text.make(),
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
          CodeBox(CodeBoxText("eg: 'Velocityx'.box.roundedLg.make();\n\nSets the border radius as 15")),
          10.heightBox,
          "Set a custom rounding".text.xl.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'VelocityX'.box.withRounded(20).make();\n\nsets custom border radius as 20.")),
          20.heightBox,
          "Gradient".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined gradient as box properties".text.make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "linearGradient",
              "radialGradient",
              "sweepGradient",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.box.linearGradient([Colors.red,Colors.orange]).make();\n\nSets the linear gradient with these two colors")),
          10.heightBox,
          "Set a custom letter spacing".text.make(),
          CodeBox(CodeBoxText("eg: 'Velocityx'.text.letterSpacing(4.0).make();\n\nSets the letterSpacing as 4.0")),
          20.heightBox,
          "Border".text.xl2.make(),
          10.heightBox,
          "VelocityX offers border method".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Velocityx'.box.border(color:Colors.black,width:1.0,style:BorderStyle.solid).make();")),
          20.heightBox,
          "Background Image".text.xl2.make(),
          10.heightBox,
          "VelocityX offers bgImage method".text.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Velocityx'.box.bgImage(DecorationImage image).make();")),
          20.heightBox,
          "Using all together".text.xl2.make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Mobile'.text.white.xl4.semiBold.center.makeCentered().box.roundedLg.green500.shadow2xl.make().whOneForth(context)")),
          "Output:".text.make(),
          10.heightBox,
          "Mobile".text.white.xl4.semiBold.center.makeCentered().box.roundedLg.green500.shadow2xl.make().whOneForth(context),
        ],
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
