
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:movie_flutter/utils/app_layout.dart';
import 'package:movie_flutter/utils/styles.dart';
import 'package:movie_flutter/widgets/column_layout.dart';
import 'package:movie_flutter/widgets/thick_container.dart';
import 'package:movie_flutter/utils/app_info.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget({
    super.key,
    required this.isColor,
    required this.sections,
    this.width=3
  });

  final bool? isColor;
  final int sections;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,BoxConstraints constraints){
        print("the width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth()/sections).floor(),
                (index) => SizedBox(
              width: width,
              height: 1,

              child: DecoratedBox(

                decoration: BoxDecoration(
                  color: isColor==null?Colors.white:Colors.grey.shade300,

                ),
              ),
            ),
          ),
        );
      },

    );
  }
}
