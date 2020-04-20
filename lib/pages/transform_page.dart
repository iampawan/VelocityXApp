import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/inline_code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class TransformPage extends StatelessWidget {
  static const String routeName = "/transform";
  @override
  Widget build(BuildContext context) {
    final width = context.mdWindowSize == MobileWindowSize.small
        ? context.percentWidth * 100
        : 300.0;
    return VelocityScaffold(
      title: 'Transform',
      body: VStack([
        "VelocityX allows you to quickly rotate and scale widget using scale and rotate extension"
            .text
            .xl
            .semiBold
            .make(),
        30.heightBox,
        "Trasform widgets Using VelocityX rotate method extention"
            .text
            .xl2
            .blue800
            .semiBold
            .make(),
        30.heightBox,
        Wrap(
          runSpacing: 20,
          spacing: 20,
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          children: <Widget>[
            [
              "Rotate Text 0 Degree".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "anywidget.rotate0()\n\neg: Text().rotate0()\n\nIt will rotate the text to 0 Degree.")),
              "Bellow Image is Roatated 0 Degree".text.make().h10(context)
            ].vStack().w(width),
            [
              "Rotate Text 45 Degree".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "anywidget.rotate45()\n\neg: Text().rotate45()\n\nIt will rotate the text to 45 Degree.")),
              "Bellow Image is Roatated 45 Degree".text.make().h10(context)
            ].vStack().w(width),
            [
              "Rotate Text 90 Degree".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "anywidget.rotate90()\n\neg: Text().rotate90()\n\nIt will rotate the text to 90 Degree.")),
              "Bellow Image is Roatated 90 Degree".text.make().h10(context)
            ].vStack().w(width),
          ],
        ),
        Wrap(
          runSpacing: 20,
          spacing: 20,
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          children: <Widget>[
            HStack([
              Image(
                      height: 230,
                      width: 230,
                      image: AssetImage("assets/designer.png"))
                  .rotate0(),
              Padding(
                padding: const EdgeInsets.only(left: 88.0),
                child: Image(
                        height: 230,
                        width: 230,
                        image: AssetImage("assets/designer.png"))
                    .rotate45(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 88.0),
                child: Image(
                        height: 230,
                        width: 230,
                        image: AssetImage("assets/designer.png"))
                    .rotate90(),
              )
            ])
          ],
        ),
        30.heightBox,
        Wrap(
          runSpacing: 20,
          spacing: 20,
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          children: <Widget>[
            [
              "Rotate Text 180 Degree".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "anywidget.rotate180()\n\neg: Text().rotate180()\n\nIt will rotate the text to 180 Degree.")),
              "Bellow Image is Roatated 180  Degree \n".text.make().h10(context)
            ].vStack().w(width),
            [
              "Rotate Text  N180 Degree".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "anywidget.rotateN180()\n\neg: Text().rotateN180()\n\nIt will rotate the text to N180 Degree.")),
              "Bellow Image is Roatated N180 Degree".text.make().h10(context)
            ].vStack().w(width),
            [
              "Rotate Text  N90 Degree".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "anywidget.rotateN90()\n\neg: Text().rotateN90()\n\nIt will rotate the text to N90 Degree.")),
              "Bellow Image is Roatated N90 Degree".text.make().h10(context)
            ].vStack().w(width),
          ],
        ),
        30.heightBox,
        Wrap(
          runSpacing: 20,
          spacing: 20,
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          children: <Widget>[
            HStack([
              Image(
                      height: 230,
                      width: 230,
                      image: AssetImage("assets/designer.png"))
                  .rotate180(),
              Padding(
                padding: const EdgeInsets.only(left: 88.0),
                child: Image(
                        height: 230,
                        width: 230,
                        image: AssetImage("assets/designer.png"))
                    .rotateN180(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 88.0),
                child: Image(
                        height: 230,
                        width: 230,
                        image: AssetImage("assets/designer.png"))
                    .rotateN90(),
              )
            ])
          ],
        ),

        30.heightBox,
        Wrap(
          runSpacing: 20,
          spacing: 20,
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          children: <Widget>[
            [
              "Rotate Text N45 Degree".text.xl.bold.blue800.make(),
              CodeBox(CodeBoxText(
                  "anywidget.rotateN45()\n\neg: Text().rotateN45()\n\nIt will rotate the text to N45 Degree.")),
              "Bellow Image is Roatated N45  Degree \n".text.make().h10(context)
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
            HStack([
              Image(
                      height: 230,
                      width: 230,
                      image: AssetImage("assets/designer.png"))
                  .rotateN45(),
              
              
            ])
          ],
        ),
      ]).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
