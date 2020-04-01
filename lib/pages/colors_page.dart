import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class ColorsPage extends StatelessWidget {
  static const String routeName = "/colors";
  @override
  Widget build(BuildContext context) {
    final width = context.mdWindowSize == MobileWindowSize.xsmall
        ? context.percentWidth * 100
        : 300.0;
    return VelocityScaffold(
      title: "Colors",
      body: VStack([
        "VelocityX includes a generous palette of great-looking, well-balanced colors that are perfect for prototyping or for kicking off a brand new project."
            .text
            .xl
            .semiBold
            .make(),
        10.heightBox,
        "You can either use the color directly or get the hex value"
            .text
            .make(),
        10.heightBox,
        Wrap(
          runSpacing: 20,
          spacing: 20,
          children: <Widget>[
            [
              "To get a color".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "VelocityX.{colorname}Color{number}\n\neg: VelocityX.blueColor900")),
            ].vStack().w(width),
            [
              "To get a hexColor".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "VelocityX.{colorname}{number}\n\neg: VelocityX.blue900")),
            ].vStack().w(width),
            [
              "To use a text color".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(".{colorname}{number}\n\neg: text.blue900")),
            ].vStack().w(width),
            [
              "To set a text color".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  ".color({yourcolor})\n\neg: text.color(Colors.blue)")),
            ].vStack().w(width),
            [
              "To use a box(container) color".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(".{colorname}{number}\n\neg: box.blue900")),
            ].vStack().w(width),
            [
              "To set a box(container) color".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  ".color({yourcolor})\n\neg: box.color(Colors.blue)")),
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
            MyColor(VelocityX.gray100, "Gray100", VelocityX.grayHex100),
            MyColor(VelocityX.gray200, "Gray200", VelocityX.grayHex200),
            MyColor(VelocityX.gray300, "Gray300", VelocityX.grayHex300),
            MyColor(VelocityX.gray400, "Gray400", VelocityX.grayHex400),
            MyColor(VelocityX.gray500, "Gray500", VelocityX.grayHex500),
            MyColor(VelocityX.gray600, "Gray600", VelocityX.grayHex600),
            MyColor(VelocityX.gray700, "Gray700", VelocityX.grayHex700),
            MyColor(VelocityX.gray800, "Gray800", VelocityX.grayHex800),
            MyColor(VelocityX.gray900, "Gray900", VelocityX.grayHex900),
          ],
        ),
        20.heightBox,
        "Red".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.red100, "Red100", VelocityX.redHex100),
            MyColor(VelocityX.red200, "Red200", VelocityX.redHex200),
            MyColor(VelocityX.red300, "Red300", VelocityX.redHex300),
            MyColor(VelocityX.red400, "Red400", VelocityX.redHex400),
            MyColor(VelocityX.red500, "Red500", VelocityX.redHex500),
            MyColor(VelocityX.red600, "Red600", VelocityX.redHex600),
            MyColor(VelocityX.red700, "Red700", VelocityX.redHex700),
            MyColor(VelocityX.red800, "Red800", VelocityX.redHex800),
            MyColor(VelocityX.red900, "Red900", VelocityX.redHex900),
          ],
        ),
        20.heightBox,
        "Orange".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.orange100, "Orange100", VelocityX.orangeHex100),
            MyColor(VelocityX.orange200, "Orange200", VelocityX.orangeHex200),
            MyColor(VelocityX.orange300, "Orange300", VelocityX.orangeHex300),
            MyColor(VelocityX.orange400, "Orange400", VelocityX.orangeHex400),
            MyColor(VelocityX.orange500, "Orange500", VelocityX.orangeHex500),
            MyColor(VelocityX.orange600, "Orange600", VelocityX.orangeHex600),
            MyColor(VelocityX.orange700, "Orange700", VelocityX.orangeHex700),
            MyColor(VelocityX.orange800, "Orange800", VelocityX.orangeHex800),
            MyColor(VelocityX.orange900, "Orange900", VelocityX.orangeHex900),
          ],
        ),
        20.heightBox,
        "Yellow".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.yellow100, "Yellow100", VelocityX.yellowHex100),
            MyColor(VelocityX.yellow200, "Yellow200", VelocityX.yellowHex200),
            MyColor(VelocityX.yellow300, "Yellow300", VelocityX.yellowHex300),
            MyColor(VelocityX.yellow400, "Yellow400", VelocityX.yellowHex400),
            MyColor(VelocityX.yellow500, "Yellow500", VelocityX.yellowHex500),
            MyColor(VelocityX.yellow600, "Yellow600", VelocityX.yellowHex600),
            MyColor(VelocityX.yellow700, "Yellow700", VelocityX.yellowHex700),
            MyColor(VelocityX.yellow800, "Yellow800", VelocityX.yellowHex800),
            MyColor(VelocityX.yellow900, "Yellow900", VelocityX.yellowHex900),
          ],
        ),
        20.heightBox,
        "Green".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.green100, "Green100", VelocityX.greenHex100),
            MyColor(VelocityX.green200, "Green200", VelocityX.greenHex200),
            MyColor(VelocityX.green300, "Green300", VelocityX.greenHex300),
            MyColor(VelocityX.green400, "Green400", VelocityX.greenHex400),
            MyColor(VelocityX.green500, "Green500", VelocityX.greenHex500),
            MyColor(VelocityX.green600, "Green600", VelocityX.greenHex600),
            MyColor(VelocityX.green700, "Green700", VelocityX.greenHex700),
            MyColor(VelocityX.green800, "Green800", VelocityX.greenHex800),
            MyColor(VelocityX.green900, "Green900", VelocityX.greenHex900),
          ],
        ),
        20.heightBox,
        "Teal".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.teal100, "Teal100", VelocityX.tealHex100),
            MyColor(VelocityX.teal200, "Teal200", VelocityX.tealHex200),
            MyColor(VelocityX.teal300, "Teal300", VelocityX.tealHex300),
            MyColor(VelocityX.teal400, "Teal400", VelocityX.tealHex400),
            MyColor(VelocityX.teal500, "Teal500", VelocityX.tealHex500),
            MyColor(VelocityX.teal600, "Teal600", VelocityX.tealHex600),
            MyColor(VelocityX.teal700, "Teal700", VelocityX.tealHex700),
            MyColor(VelocityX.teal800, "Teal800", VelocityX.tealHex800),
            MyColor(VelocityX.teal900, "Teal900", VelocityX.tealHex900),
          ],
        ),
        20.heightBox,
        "Blue".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.blue100, "Blue100", VelocityX.blueHex100),
            MyColor(VelocityX.blue200, "Blue200", VelocityX.blueHex200),
            MyColor(VelocityX.blue300, "Blue300", VelocityX.blueHex300),
            MyColor(VelocityX.blue400, "Blue400", VelocityX.blueHex400),
            MyColor(VelocityX.blue500, "Blue500", VelocityX.blueHex500),
            MyColor(VelocityX.blue600, "Blue600", VelocityX.blueHex600),
            MyColor(VelocityX.blue700, "Blue700", VelocityX.blueHex700),
            MyColor(VelocityX.blue800, "Blue800", VelocityX.blueHex800),
            MyColor(VelocityX.blue900, "Blue900", VelocityX.blueHex900),
          ],
        ),
        20.heightBox,
        "Indigo".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.indigo100, "Indigo100", VelocityX.indigoHex100),
            MyColor(VelocityX.indigo200, "Indigo200", VelocityX.indigoHex200),
            MyColor(VelocityX.indigo300, "Indigo300", VelocityX.indigoHex300),
            MyColor(VelocityX.indigo400, "Indigo400", VelocityX.indigoHex400),
            MyColor(VelocityX.indigo500, "Indigo500", VelocityX.indigoHex500),
            MyColor(VelocityX.indigo600, "Indigo600", VelocityX.indigoHex600),
            MyColor(VelocityX.indigo700, "Indigo700", VelocityX.indigoHex700),
            MyColor(VelocityX.indigo800, "Indigo800", VelocityX.indigoHex800),
            MyColor(VelocityX.indigo900, "Indigo900", VelocityX.indigoHex900),
          ],
        ),
        20.heightBox,
        "Purple".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.purple100, "Purple100", VelocityX.purpleHex100),
            MyColor(VelocityX.purple200, "Purple200", VelocityX.purpleHex200),
            MyColor(VelocityX.purple300, "Purple300", VelocityX.purpleHex300),
            MyColor(VelocityX.purple400, "Purple400", VelocityX.purpleHex400),
            MyColor(VelocityX.purple500, "Purple500", VelocityX.purpleHex500),
            MyColor(VelocityX.purple600, "Purple600", VelocityX.purpleHex600),
            MyColor(VelocityX.purple700, "Purple700", VelocityX.purpleHex700),
            MyColor(VelocityX.purple800, "Purple800", VelocityX.purpleHex800),
            MyColor(VelocityX.purple900, "Purple900", VelocityX.purpleHex900),
          ],
        ),
        20.heightBox,
        "Pink".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(VelocityX.pink100, "Pink100", VelocityX.pinkHex100),
            MyColor(VelocityX.pink200, "Pink200", VelocityX.pinkHex200),
            MyColor(VelocityX.pink300, "Pink300", VelocityX.pinkHex300),
            MyColor(VelocityX.pink400, "Pink400", VelocityX.pinkHex400),
            MyColor(VelocityX.pink500, "Pink500", VelocityX.pinkHex500),
            MyColor(VelocityX.pink600, "Pink600", VelocityX.pinkHex600),
            MyColor(VelocityX.pink700, "Pink700", VelocityX.pinkHex700),
            MyColor(VelocityX.pink800, "Pink800", VelocityX.pinkHex800),
            MyColor(VelocityX.pink900, "Pink900", VelocityX.pinkHex900),
          ],
        ),
      ]).p16().scrollVertical(physics: BouncingScrollPhysics()),
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
            VelocityBox().height(50).width(50).rounded.color(m.color).make(),
            10.widthBox,
            [
              m.name.text.lg.make(),
              5.heightBox,
              m.hex.selectableText.gray600.make()
            ].vStack()
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
