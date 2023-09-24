import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie_flutter/utils/app_layout.dart';
import 'package:movie_flutter/utils/styles.dart';
import 'package:movie_flutter/utils/app_info.dart';

class HotelView extends StatelessWidget {
  // const HotelView({super.key});
  HotelView({required this.image,required this.place , required this.destination ,required this.price});
  final String image;
  final String place;
  final String destination;
  final int price;

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return
       Container(
           width: size.width*0.6,
           height: 350,
        margin: EdgeInsets.only(right: 17.0,top: 5),
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 17),
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 2,
              spreadRadius: 5
            )
          ]

        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/${image}')
                )
              ),
            ),
            Gap(10),
            Text(
              place,
              style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor)
            ),
            Gap(5),
            Text(destination,
            style: Styles.headlineStyle3.copyWith(color: Styles.kakiColor),),
            Gap(8),
            Text(
                "\$${price}/night",
                style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor)
            ),
          ],
        ),

      );
  }
}
