import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/inline_code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class ListPage extends StatelessWidget {
  static const String routeName = "/list";
  @override
  Widget build(BuildContext context) {
    final width = context.mdWindowSize == MobileWindowSize.small
        ? context.percentWidth * 100
        : 300.0;
    return VelocityScaffold(
      title: "List",
      body: VStack(
        [
          HStack([
            "VelocityX currently provides list with two flavours "
                .text
                .xl
                .semiBold
                .make(),
            InlineCodeBox(InlineCodeBoxText("VxDiscList")),
            10.widthBox,
            InlineCodeBox(InlineCodeBoxText("VxDecimalList")),
            10.widthBox,
          ]),
          20.heightBox,
          "VxDiscList".text.xl2.blue800.semiBold.make(),
          10.heightBox,
          "VxDiscList is used to generate an unordered list which will be having a disc before your list label as shown in the example below "
              .text
              .make(),
          10.heightBox,
          "Here is the example of VxDiscList".text.make(),
          10.heightBox,
          Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: <Widget>[
                CodeBox(CodeBoxText(
                        "VxDiscList([\n\t\t  List<String> \n\t],\n); \n\nfor Eg. \n\nVxDiscList([\n\tfor (var i = 1; i <= 10; i++) ...[\n\t\t\"I am at \$i inside VxDiscList\" \n\t]\n);"))
                    .w(width + 500),
              ]),
          10.heightBox,
          "Working Example of above code snippet".text.bold.make(),
          10.heightBox,
          VxDiscList([
            for (var i = 1; i <= 10; i++) ...[
              "I am at $i inside VxDiscList"
            ]
          ]),
          20.heightBox,
          "VxDecimalList".text.xl2.blue800.semiBold.make(),
          10.heightBox,
          "VxDecimalList is used to generate an ordered list which will be having a Decimal number before your list label as shown in the example below "
              .text
              .make(),
          10.heightBox,
          "Here is the example of VxDecimalList".text.make(),
          10.heightBox,
          Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: <Widget>[
                CodeBox(CodeBoxText(
                        "VxDecimalList([\n\t\t  List<String> \n\t],\n); \n\nfor Eg. \n\VxDecimalList([\n\tfor (var i = 1; i <= 10; i++) ...[\n\t\t\"I am at \$i inside VxDecimalList\" \n\t]\n);"))
                    .w(width + 500),
              ]),
          10.heightBox,
          "Working Example of above code snippet".text.bold.make(),
          10.heightBox,
          VxDecimalList([
            for (var i = 1; i <= 10; i++) ...[
              "I am at $i inside VxDecimalList"
            ]
          ])
        ],
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
