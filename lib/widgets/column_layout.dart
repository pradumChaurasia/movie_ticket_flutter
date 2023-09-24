import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie_flutter/utils/app_info.dart';
import 'package:movie_flutter/utils/app_layout.dart';
import 'package:movie_flutter/utils/styles.dart';
import 'package:movie_flutter/widgets/icon_app_text.dart';
import 'package:movie_flutter/widgets/ticket_view.dart';

class ColumnLayout extends StatelessWidget {
  //
  ColumnLayout({required this.text1,required this.text2,required this.alignment,this.isColor});
  final String text1;
  final String text2;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(text1,style:isColor==null?Styles.headlineStyle3.copyWith(color:Colors.white):Styles.headlineStyle3,),
        // style:isColor==null?Styles.headlineStyle3.copyWith(color:Colors.white):Styles.headlineStyle3
        Gap(5),
        Text(text2,style: isColor==null?Styles.headlineStyle4.copyWith(color:Colors.white):Styles.headlineStyle4,)

      ],
    );
  }
}
