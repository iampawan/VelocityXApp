import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class ColorsPage extends StatelessWidget {
  static const String routeName = "/colors";
  @override
  Widget build(BuildContext context) {
    final width = context.mdWindowSize == MobileWindowSize.xsmall ? context.percentWidth * 100 : 300.0;
    return VelocityScaffold(
      title: "Colors",
      body: VStack([
        "VelocityX includes a generous palette of great-looking, well-balanced colors that are perfect for prototyping or for kicking off a brand new project."
            .text
            .xl
            .semiBold
            .make(),
        10.heightBox,
        "You can either use the color directly or get the hex value".text.make(),
        10.heightBox,
        Wrap(
          runSpacing: 20,
          spacing: 20,
          children: <Widget>[
            [
              "To get a color".text.xl.bold.blue800.make(),
              CodeBox("VelocityX.{colorname}Color{number}\n\neg: VelocityX.blueColor900".text.wide.white.make()),
            ].vStack().w(width),
            [
              "To get a hexColor".text.xl.bold.blue800.make(),
              CodeBox("VelocityX.{colorname}{number}\n\neg: VelocityX.blue900".text.wide.white.make()),
            ].vStack().w(width),
            [
              "To use a text color".text.xl.bold.blue800.make(),
              CodeBox(".{colorname}{number}\n\neg: text.blue900".text.wide.white.make()),
            ].vStack().w(width),
            [
              "To set a text color".text.xl.bold.blue800.make(),
              CodeBox(".color({yourcolor})\n\neg: text.color(Colors.blue)".text.wide.white.make()),
            ].vStack().w(width),
            [
              "To use a box(container) color".text.xl.bold.blue800.make(),
              CodeBox(".{colorname}{number}\n\neg: box.blue900".text.wide.white.make()),
            ].vStack().w(width),
            [
              "To set a box(container) color".text.xl.bold.blue800.make(),
              CodeBox(".color({yourcolor})\n\neg: box.color(Colors.blue)".text.wide.white.make()),
            ].vStack().w(width)
          ],
        ),
        40.heightBox,
        "Default Color Palette".text.xl3.bold.make(),
        20.heightBox,
        "Black & White".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.blackColor, "Black", VelocityX.black),
            MyColor(VelocityX.whiteColor, "White", VelocityX.white),
          ],
        ),
        20.heightBox,
        "Gray".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.grayColor100, "Gray100", VelocityX.gray100),
            MyColor(VelocityX.grayColor200, "Gray200", VelocityX.gray200),
            MyColor(VelocityX.grayColor300, "Gray300", VelocityX.gray300),
            MyColor(VelocityX.grayColor400, "Gray400", VelocityX.gray400),
            MyColor(VelocityX.grayColor500, "Gray500", VelocityX.gray500),
            MyColor(VelocityX.grayColor600, "Gray600", VelocityX.gray600),
            MyColor(VelocityX.grayColor700, "Gray700", VelocityX.gray700),
            MyColor(VelocityX.grayColor800, "Gray800", VelocityX.gray800),
            MyColor(VelocityX.grayColor900, "Gray900", VelocityX.gray900),
          ],
        ),
        20.heightBox,
        "Red".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.redColor100, "Red100", VelocityX.red100),
            MyColor(VelocityX.redColor200, "Red200", VelocityX.red200),
            MyColor(VelocityX.redColor300, "Red300", VelocityX.red300),
            MyColor(VelocityX.redColor400, "Red400", VelocityX.red400),
            MyColor(VelocityX.redColor500, "Red500", VelocityX.red500),
            MyColor(VelocityX.redColor600, "Red600", VelocityX.red600),
            MyColor(VelocityX.redColor700, "Red700", VelocityX.red700),
            MyColor(VelocityX.redColor800, "Red800", VelocityX.red800),
            MyColor(VelocityX.redColor900, "Red900", VelocityX.red900),
          ],
        ),
        20.heightBox,
        "Orange".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.orangeColor100, "Orange100", VelocityX.orange100),
            MyColor(VelocityX.orangeColor200, "Orange200", VelocityX.orange200),
            MyColor(VelocityX.orangeColor300, "Orange300", VelocityX.orange300),
            MyColor(VelocityX.orangeColor400, "Orange400", VelocityX.orange400),
            MyColor(VelocityX.orangeColor500, "Orange500", VelocityX.orange500),
            MyColor(VelocityX.orangeColor600, "Orange600", VelocityX.orange600),
            MyColor(VelocityX.orangeColor700, "Orange700", VelocityX.orange700),
            MyColor(VelocityX.orangeColor800, "Orange800", VelocityX.orange800),
            MyColor(VelocityX.orangeColor900, "Orange900", VelocityX.orange900),
          ],
        ),
        20.heightBox,
        "Yellow".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.yellowColor100, "Yellow100", VelocityX.yellow100),
            MyColor(VelocityX.yellowColor200, "Yellow200", VelocityX.yellow200),
            MyColor(VelocityX.yellowColor300, "Yellow300", VelocityX.yellow300),
            MyColor(VelocityX.yellowColor400, "Yellow400", VelocityX.yellow400),
            MyColor(VelocityX.yellowColor500, "Yellow500", VelocityX.yellow500),
            MyColor(VelocityX.yellowColor600, "Yellow600", VelocityX.yellow600),
            MyColor(VelocityX.yellowColor700, "Yellow700", VelocityX.yellow700),
            MyColor(VelocityX.yellowColor800, "Yellow800", VelocityX.yellow800),
            MyColor(VelocityX.yellowColor900, "Yellow900", VelocityX.yellow900),
          ],
        ),
        20.heightBox,
        "Green".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.greenColor100, "Green100", VelocityX.green100),
            MyColor(VelocityX.greenColor200, "Green200", VelocityX.green200),
            MyColor(VelocityX.greenColor300, "Green300", VelocityX.green300),
            MyColor(VelocityX.greenColor400, "Green400", VelocityX.green400),
            MyColor(VelocityX.greenColor500, "Green500", VelocityX.green500),
            MyColor(VelocityX.greenColor600, "Green600", VelocityX.green600),
            MyColor(VelocityX.greenColor700, "Green700", VelocityX.green700),
            MyColor(VelocityX.greenColor800, "Green800", VelocityX.green800),
            MyColor(VelocityX.greenColor900, "Green900", VelocityX.green900),
          ],
        ),
        20.heightBox,
        "Teal".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.tealColor100, "Teal100", VelocityX.teal100),
            MyColor(VelocityX.tealColor200, "Teal200", VelocityX.teal200),
            MyColor(VelocityX.tealColor300, "Teal300", VelocityX.teal300),
            MyColor(VelocityX.tealColor400, "Teal400", VelocityX.teal400),
            MyColor(VelocityX.tealColor500, "Teal500", VelocityX.teal500),
            MyColor(VelocityX.tealColor600, "Teal600", VelocityX.teal600),
            MyColor(VelocityX.tealColor700, "Teal700", VelocityX.teal700),
            MyColor(VelocityX.tealColor800, "Teal800", VelocityX.teal800),
            MyColor(VelocityX.tealColor900, "Teal900", VelocityX.teal900),
          ],
        ),
        20.heightBox,
        "Blue".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.blueColor100, "Blue100", VelocityX.blue100),
            MyColor(VelocityX.blueColor200, "Blue200", VelocityX.blue200),
            MyColor(VelocityX.blueColor300, "Blue300", VelocityX.blue300),
            MyColor(VelocityX.blueColor400, "Blue400", VelocityX.blue400),
            MyColor(VelocityX.blueColor500, "Blue500", VelocityX.blue500),
            MyColor(VelocityX.blueColor600, "Blue600", VelocityX.blue600),
            MyColor(VelocityX.blueColor700, "Blue700", VelocityX.blue700),
            MyColor(VelocityX.blueColor800, "Blue800", VelocityX.blue800),
            MyColor(VelocityX.blueColor900, "Blue900", VelocityX.blue900),
          ],
        ),
        20.heightBox,
        "Indigo".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.indigoColor100, "Indigo100", VelocityX.indigo100),
            MyColor(VelocityX.indigoColor200, "Indigo200", VelocityX.indigo200),
            MyColor(VelocityX.indigoColor300, "Indigo300", VelocityX.indigo300),
            MyColor(VelocityX.indigoColor400, "Indigo400", VelocityX.indigo400),
            MyColor(VelocityX.indigoColor500, "Indigo500", VelocityX.indigo500),
            MyColor(VelocityX.indigoColor600, "Indigo600", VelocityX.indigo600),
            MyColor(VelocityX.indigoColor700, "Indigo700", VelocityX.indigo700),
            MyColor(VelocityX.indigoColor800, "Indigo800", VelocityX.indigo800),
            MyColor(VelocityX.indigoColor900, "Indigo900", VelocityX.indigo900),
          ],
        ),
        20.heightBox,
        "Purple".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.purpleColor100, "Purple100", VelocityX.purple100),
            MyColor(VelocityX.purpleColor200, "Purple200", VelocityX.purple200),
            MyColor(VelocityX.purpleColor300, "Purple300", VelocityX.purple300),
            MyColor(VelocityX.purpleColor400, "Purple400", VelocityX.purple400),
            MyColor(VelocityX.purpleColor500, "Purple500", VelocityX.purple500),
            MyColor(VelocityX.purpleColor600, "Purple600", VelocityX.purple600),
            MyColor(VelocityX.purpleColor700, "Purple700", VelocityX.purple700),
            MyColor(VelocityX.purpleColor800, "Purple800", VelocityX.purple800),
            MyColor(VelocityX.purpleColor900, "Purple900", VelocityX.purple900),
          ],
        ),
        20.heightBox,
        "Pink".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.pinkColor100, "Pink100", VelocityX.pink100),
            MyColor(VelocityX.pinkColor200, "Pink200", VelocityX.pink200),
            MyColor(VelocityX.pinkColor300, "Pink300", VelocityX.pink300),
            MyColor(VelocityX.pinkColor400, "Pink400", VelocityX.pink400),
            MyColor(VelocityX.pinkColor500, "Pink500", VelocityX.pink500),
            MyColor(VelocityX.pinkColor600, "Pink600", VelocityX.pink600),
            MyColor(VelocityX.pinkColor700, "Pink700", VelocityX.pink700),
            MyColor(VelocityX.pinkColor800, "Pink800", VelocityX.pink800),
            MyColor(VelocityX.pinkColor900, "Pink900", VelocityX.pink900),
          ],
        ),
      ]).p16().scrollVertical(),
    );
  }
}

class ColorBox extends StatelessWidget {
  final List<MyColor> children;

  const ColorBox({Key key, @required this.children}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Wrap(
        runSpacing: 20,
        spacing: 20,
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        children: children.map((m) {
          return [
            VelocityBox().height(50).width(50).rounded.color(m.color).shadowLg.make(),
            10.widthBox,
            [m.name.text.lg.make(), 5.heightBox, m.hex.text.gray600.make()].vStack()
          ].hStack(crossAlignment: CrossAxisAlignment.start);
        }).toList());
  }
}

class MyColor {
  final Color color;
  final String name;
  final String hex;

  MyColor(this.color, this.name, this.hex);
}
