import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie_flutter/utils/app_layout.dart';
import 'package:movie_flutter/utils/styles.dart';


class AppIconText extends StatelessWidget {
  // const AppIconText({
  //   super.key,
  // });

  AppIconText({required this.icon,required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:Colors.white
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 12.0),
      child: Row(
        children: [
          Icon(icon,color: Color(0xFFBFC2DF),),
          Gap(20.0),
          Text('Departure',
            style: Styles.textStyle,)
        ],
      ),
    );
  }
}
