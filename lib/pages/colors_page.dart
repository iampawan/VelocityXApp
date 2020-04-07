import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:velocityx_app/widgets/velocity_scaffold.dart';
import 'package:velocityx_app/widgets/code_box.dart';

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
                  "Vx.{colorname}Color{number}\n\neg: Vx.blueColor900")),
            ].vStack().w(width),
            [
              "To get a hexColor".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "Vx.{colorname}{number}\n\neg: Vx.blue900")),
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
            MyColor(Vx.black, "Black", Vx.blackHex),
            MyColor(Vx.white, "White", Vx.whiteHex),
          ],
        ),
        20.heightBox,
        "Gray".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.gray100, "Gray100", Vx.grayHex100),
            MyColor(Vx.gray200, "Gray200", Vx.grayHex200),
            MyColor(Vx.gray300, "Gray300", Vx.grayHex300),
            MyColor(Vx.gray400, "Gray400", Vx.grayHex400),
            MyColor(Vx.gray500, "Gray500", Vx.grayHex500),
            MyColor(Vx.gray600, "Gray600", Vx.grayHex600),
            MyColor(Vx.gray700, "Gray700", Vx.grayHex700),
            MyColor(Vx.gray800, "Gray800", Vx.grayHex800),
            MyColor(Vx.gray900, "Gray900", Vx.grayHex900),
          ],
        ),
        20.heightBox,
        "Red".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.red100, "Red100", Vx.redHex100),
            MyColor(Vx.red200, "Red200", Vx.redHex200),
            MyColor(Vx.red300, "Red300", Vx.redHex300),
            MyColor(Vx.red400, "Red400", Vx.redHex400),
            MyColor(Vx.red500, "Red500", Vx.redHex500),
            MyColor(Vx.red600, "Red600", Vx.redHex600),
            MyColor(Vx.red700, "Red700", Vx.redHex700),
            MyColor(Vx.red800, "Red800", Vx.redHex800),
            MyColor(Vx.red900, "Red900", Vx.redHex900),
          ],
        ),
        20.heightBox,
        "Orange".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.orange100, "Orange100", Vx.orangeHex100),
            MyColor(Vx.orange200, "Orange200", Vx.orangeHex200),
            MyColor(Vx.orange300, "Orange300", Vx.orangeHex300),
            MyColor(Vx.orange400, "Orange400", Vx.orangeHex400),
            MyColor(Vx.orange500, "Orange500", Vx.orangeHex500),
            MyColor(Vx.orange600, "Orange600", Vx.orangeHex600),
            MyColor(Vx.orange700, "Orange700", Vx.orangeHex700),
            MyColor(Vx.orange800, "Orange800", Vx.orangeHex800),
            MyColor(Vx.orange900, "Orange900", Vx.orangeHex900),
          ],
        ),
        20.heightBox,
        "Yellow".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.yellow100, "Yellow100", Vx.yellowHex100),
            MyColor(Vx.yellow200, "Yellow200", Vx.yellowHex200),
            MyColor(Vx.yellow300, "Yellow300", Vx.yellowHex300),
            MyColor(Vx.yellow400, "Yellow400", Vx.yellowHex400),
            MyColor(Vx.yellow500, "Yellow500", Vx.yellowHex500),
            MyColor(Vx.yellow600, "Yellow600", Vx.yellowHex600),
            MyColor(Vx.yellow700, "Yellow700", Vx.yellowHex700),
            MyColor(Vx.yellow800, "Yellow800", Vx.yellowHex800),
            MyColor(Vx.yellow900, "Yellow900", Vx.yellowHex900),
          ],
        ),
        20.heightBox,
        "Green".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.green100, "Green100", Vx.greenHex100),
            MyColor(Vx.green200, "Green200", Vx.greenHex200),
            MyColor(Vx.green300, "Green300", Vx.greenHex300),
            MyColor(Vx.green400, "Green400", Vx.greenHex400),
            MyColor(Vx.green500, "Green500", Vx.greenHex500),
            MyColor(Vx.green600, "Green600", Vx.greenHex600),
            MyColor(Vx.green700, "Green700", Vx.greenHex700),
            MyColor(Vx.green800, "Green800", Vx.greenHex800),
            MyColor(Vx.green900, "Green900", Vx.greenHex900),
          ],
        ),
        20.heightBox,
        "Teal".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.teal100, "Teal100", Vx.tealHex100),
            MyColor(Vx.teal200, "Teal200", Vx.tealHex200),
            MyColor(Vx.teal300, "Teal300", Vx.tealHex300),
            MyColor(Vx.teal400, "Teal400", Vx.tealHex400),
            MyColor(Vx.teal500, "Teal500", Vx.tealHex500),
            MyColor(Vx.teal600, "Teal600", Vx.tealHex600),
            MyColor(Vx.teal700, "Teal700", Vx.tealHex700),
            MyColor(Vx.teal800, "Teal800", Vx.tealHex800),
            MyColor(Vx.teal900, "Teal900", Vx.tealHex900),
          ],
        ),
        20.heightBox,
        "Blue".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.blue100, "Blue100", Vx.blueHex100),
            MyColor(Vx.blue200, "Blue200", Vx.blueHex200),
            MyColor(Vx.blue300, "Blue300", Vx.blueHex300),
            MyColor(Vx.blue400, "Blue400", Vx.blueHex400),
            MyColor(Vx.blue500, "Blue500", Vx.blueHex500),
            MyColor(Vx.blue600, "Blue600", Vx.blueHex600),
            MyColor(Vx.blue700, "Blue700", Vx.blueHex700),
            MyColor(Vx.blue800, "Blue800", Vx.blueHex800),
            MyColor(Vx.blue900, "Blue900", Vx.blueHex900),
          ],
        ),
        20.heightBox,
        "Indigo".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.indigo100, "Indigo100", Vx.indigoHex100),
            MyColor(Vx.indigo200, "Indigo200", Vx.indigoHex200),
            MyColor(Vx.indigo300, "Indigo300", Vx.indigoHex300),
            MyColor(Vx.indigo400, "Indigo400", Vx.indigoHex400),
            MyColor(Vx.indigo500, "Indigo500", Vx.indigoHex500),
            MyColor(Vx.indigo600, "Indigo600", Vx.indigoHex600),
            MyColor(Vx.indigo700, "Indigo700", Vx.indigoHex700),
            MyColor(Vx.indigo800, "Indigo800", Vx.indigoHex800),
            MyColor(Vx.indigo900, "Indigo900", Vx.indigoHex900),
          ],
        ),
        20.heightBox,
        "Purple".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.purple100, "Purple100", Vx.purpleHex100),
            MyColor(Vx.purple200, "Purple200", Vx.purpleHex200),
            MyColor(Vx.purple300, "Purple300", Vx.purpleHex300),
            MyColor(Vx.purple400, "Purple400", Vx.purpleHex400),
            MyColor(Vx.purple500, "Purple500", Vx.purpleHex500),
            MyColor(Vx.purple600, "Purple600", Vx.purpleHex600),
            MyColor(Vx.purple700, "Purple700", Vx.purpleHex700),
            MyColor(Vx.purple800, "Purple800", Vx.purpleHex800),
            MyColor(Vx.purple900, "Purple900", Vx.purpleHex900),
          ],
        ),
        20.heightBox,
        "Pink".text.xl2.bold.make(),
        10.heightBox,
        ColorBox(
          children: [
            MyColor(Vx.pink100, "Pink100", Vx.pinkHex100),
            MyColor(Vx.pink200, "Pink200", Vx.pinkHex200),
            MyColor(Vx.pink300, "Pink300", Vx.pinkHex300),
            MyColor(Vx.pink400, "Pink400", Vx.pinkHex400),
            MyColor(Vx.pink500, "Pink500", Vx.pinkHex500),
            MyColor(Vx.pink600, "Pink600", Vx.pinkHex600),
            MyColor(Vx.pink700, "Pink700", Vx.pinkHex700),
            MyColor(Vx.pink800, "Pink800", Vx.pinkHex800),
            MyColor(Vx.pink900, "Pink900", Vx.pinkHex900),
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
            VxBox().height(50).width(50).rounded.color(m.color).make(),
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
