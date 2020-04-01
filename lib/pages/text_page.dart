import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocityx_app/widgets/code_box.dart';
import 'package:velocityx_app/widgets/velocity_scaffold.dart';

class TextPage extends StatelessWidget {
  static const String routeName = "/text";
  @override
  Widget build(BuildContext context) {
    return VelocityScaffold(
      title: "Text",
      body: VStack(
        [
          "VelocityX provides text with super powers.".text.xl.semiBold.make(),
          20.heightBox,
          "Note 1:".text.bold.make(),
          "When you are done with the text properties then use .make() to complete it as a widget."
              .text
              .xl2
              .blue800
              .semiBold
              .make(),
          20.heightBox,
          "Note 2:".text.bold.make(),
          "Text & Selectable Text works the same just replace text with selectableText."
              .text
              .xl2
              .blue800
              .semiBold
              .make(),
          20.heightBox,
          "Text".text.xl2.make(),
          10.heightBox,
          "You can use any string and convert it to a text widget.".text.make(),
          CodeBox(CodeBoxText(
              "{string}.text\n\neg: 'Pawan'.text.make()\n\nIt will produce a text with String as Pawan")),
          10.heightBox,
          "You can use velocityx text with the Text widget itself.".text.make(),
          CodeBox(CodeBoxText(
              "TextWidget.text\n\neg: Text('pawan').text.red500.make()\n\nIt will produce a text with String as pawan and color as red.\nIt will also override any text property if you specify again.")),
          20.heightBox,
          "Font Scale".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined fontSizes as text properties"
              .text
              .make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "xs    - Extra Small (scaleFactor 0.75)",
              "sm    - Small (scaleFactor 0.875)",
              "base - Normal (scaleFactor 1)",
              "lg    - Large (scaleFactor 1.125)",
              "xl    - Extra Large (scaleFactor 1.25)",
              "xl2   - 2 Extra Large (scaleFactor 1.5)",
              "xl3   - 3 Extra Large (scaleFactor 1.875)",
              "xl4   - 4 Extra Large (scaleFactor 2.25)",
              "xl5   - 5 Extra Large (scaleFactor 3)",
              "xl6   - 6 Extra Large (scaleFactor 4)",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.text.xl2.make();\n\nSets the fontSize as 2 Extra Large")),
          10.heightBox,
          "Set a custom font size".text.xl.make(),
          10.heightBox,
          CodeBox(CodeBoxText(
              "'VelocityX'.text.size(20).make();\n\nwhere 20 is the font size.")),
          20.heightBox,
          "Font Weight".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined font weights as text properties"
              .text
              .make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "hairLine    - Font Weight 100",
              "thin        - Font Weight 200",
              "light       - Font Weight 300",
              "normal      - Font Weight 400",
              "medium      - Font Weight 500",
              "semiBold    - Font Weight 600",
              "bold        - Font Weight 700",
              "extraBold   - Font Weight 800",
              "extraBlack  - Font Weight 900",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.text.bold.make();\n\nSets the fontweight as bold(w700)")),
          20.heightBox,
          "Font Style".text.xl2.make(),
          10.heightBox,
          "VelocityX offers predefined italic style as a text property"
              .text
              .make(),
          10.heightBox,
          CodeBox(CodeBoxText("'Velocityx'.text.italic.make();")),
          20.heightBox,
          "Text Alignment".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined text alignments as text properties"
              .text
              .make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "center    - TextAlign.center",
              "start     - TextAlign.start",
              "end       - TextAlign.end",
              "justify   - TextAlign.justify",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.text.center.make();\n\nSets the alignment of the text as center")),
          20.heightBox,
          "Letter Spacing".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined text spacing as text properties"
              .text
              .make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "tightest    - Letter Spacing -3.0",
              "tighter     - Letter Spacing -2.0",
              "tight       - Letter Spacing -1.0",
              "wide        - Letter Spacing 1.0",
              "wider       - Letter Spacing 2.0",
              "widest      - Letter Spacing 3.0",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.text.wide.make();\n\nSets the letter spacing as 1.0 of the text")),
          10.heightBox,
          "Set a custom letter spacing".text.make(),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.text.letterSpacing(4.0).make();\n\nSets the letterSpacing as 4.0")),
          20.heightBox,
          "Text Decoration".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined text decorations as text properties"
              .text
              .make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "underline    - TextDecoration.underline",
              "lineThrough  - TextDecoration.lineThrough",
              "overline     - TextDecoration.overline",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.text.underline.make();\n\nSets the text to undelined.")),
          20.heightBox,
          "Line Height".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined line heights as text properties"
              .text
              .make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "heightTight    - Line Height 0.75",
              "heightSnug     - Line Height 0.875",
              "heightRelaxed  - Line Height 1.25",
              "heightLoose    - Line Height 1.5",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.text.heightSnug.make();\n\nSets the line height as 0.875 of the text")),
          10.heightBox,
          "Set a custom line height".text.make(),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.text.lineHeight(4.0).make();\n\nSets the line height as 4.0")),
          20.heightBox,
          "Text Utilities".text.xl2.make(),
          10.heightBox,
          "VelocityX offers many predefined regular used utilities as text properties"
              .text
              .make(),
          10.heightBox,
          CodeBox(VelocityDiscList(
            [
              "uppercase    - WELCOME TO VELOCITYX",
              "lowercase    - welcome to velocityx",
              "capitalize   - Welcome To Velocityx",
              "hidePartial  - ***** To Velocityx",
            ],
            color: VelocityX.whiteColor,
          )),
          CodeBox(CodeBoxText(
              "eg: 'Velocityx'.text.lowercase.make();\n\nSets the text as lowercase - velocityx")),
          20.heightBox,
          "Using all together".text.xl2.make(),
          10.heightBox,
          CodeBox(CodeBoxText(
              "'velocityx'.text.red500.xl2.bold.center.heightRelaxed.underline.wide.uppercase.make()")),
          "Output:".text.make(),
          'velocityx'
              .text
              .red500
              .xl2
              .bold
              .center
              .heightRelaxed
              .underline
              .wide
              .uppercase
              .make(),
        ],
      ).p16().scrollVertical(physics: BouncingScrollPhysics()),
    );
  }
}
