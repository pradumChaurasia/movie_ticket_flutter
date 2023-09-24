import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie_flutter/utils/styles.dart';
import 'package:movie_flutter/widgets/column_layout.dart';

class ProfilePage extends StatelessWidget {
  // static const id="profile_page";
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          children: [
            Gap(40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                    image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      
                    )
                  ),
                ),
                Gap(10),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Book Tickets',style: Styles.headlineStyle1,),
                      Gap(2),
                      Text('New-York',style: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey.shade500
                      ),
                      ),
                      Gap(8),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF4F3),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Row(
                          children: [
                            Container(

                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:Color(0xFF526799),
                              ),
                              padding: EdgeInsets.all(3),
                              child: Icon(FluentIcons.shield_12_filled,color: Colors.white,size: 15,),
                            ),
                            Gap(5),
                            Text('Premium Status',style: TextStyle(
                              color: Color(0xFF526799),fontWeight: FontWeight.w600
                            ),),
                            Gap(5),
                          ],
                        ),
                      )


                    ],
                ),
                Spacer(),
                Column(
                  children: [
                    InkWell(
                        onTap: (){},
                        child: Text('Edit',style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w300),))
                  ],
                ),
              ],
            ),
            Gap(5),
            Divider(color: Colors.grey.shade300,),
            Gap(5),
            Stack(
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF526799),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                    top: -40,
                    right: -45,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 18,color: Color(0xFF264CD2)),
                        shape: BoxShape.circle
                      ),
                    ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white

                        ),
                        child: Icon(FluentIcons.lightbulb_filament_16_filled,color: Color(0xFF526799),size: 29,),
                      ),
                      Gap(12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('You\'v got a new reward',
                          style: Styles.headlineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                          Text('You have 95 flights in a year',
                            style: Styles.headlineStyle2.copyWith(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.w500,
                            fontSize: 16,),
                          ),
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
            Gap(20),
            Container(
              margin: EdgeInsets.only(left: 4),
                child: Text('Accumulated miles',style: Styles.headlineStyle2,),
            ),
            Gap(30),
            Container(
              margin: EdgeInsets.only(left: 4,right: 4),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1
                  )
                ]
              ),
              child: Column(

                children: [
                  Text('192802',style: Styles.headlineStyle1.copyWith(fontSize: 40,fontWeight: FontWeight.w500),),
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Miles accrued',style: Styles.headlineStyle4,),
                      Text('21 Sep 2023',style: Styles.headlineStyle4,)
                    ],
                  ),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(text1: '23 042', text2: 'Miles', alignment: CrossAxisAlignment.start,isColor:false),
                      ColumnLayout(text1: 'Airline CO', text2: 'Received From', alignment: CrossAxisAlignment.end,isColor:false)

                    ],
                  ),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(text1: '24', text2: 'Miles', alignment: CrossAxisAlignment.start,isColor:false),
                      ColumnLayout(text1: 'Mc Donald\'s', text2: 'Received From', alignment: CrossAxisAlignment.end,isColor:false)

                    ],
                  ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(text1: '52 340', text2: 'Miles', alignment: CrossAxisAlignment.start,isColor:false),
                    ColumnLayout(text1: 'Exuma', text2: 'Received From', alignment: CrossAxisAlignment.end,isColor:false)

                  ],
                ),



                ],
              ),
            ),
            Gap(20),
            InkWell(
              onTap: (){},
              child: Center(child: Text('How to get more miles',style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,fontWeight: FontWeight.w500),)),
            )
          ],
      ),
    );
  }
}
