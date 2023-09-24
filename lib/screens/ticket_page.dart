import 'package:barcode_widget/barcode_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie_flutter/utils/app_info.dart';
import 'package:movie_flutter/utils/app_layout.dart';
import 'package:movie_flutter/utils/styles.dart';
import 'package:movie_flutter/widgets/column_layout.dart';
import 'package:movie_flutter/widgets/icon_app_text.dart';
import 'package:movie_flutter/widgets/layout_builder.dart';
import 'package:movie_flutter/widgets/ticket_view.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,

      body: Stack(

        children: [
          ListView(

            padding: EdgeInsets.symmetric(horizontal: 20.0),
            children: [
              Gap(40),
              Text(
                'Tickets',
                style: Styles.headlineStyle1,
              ),
              Gap(30.0),
              FittedBox(
                child: Container(
                  padding: EdgeInsets.all(3.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 7.0),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40)),
                            color: Colors.white),
                        child: Text(
                          'Upcoming',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 7.0),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40)),
                            color: Colors.transparent),
                        child: Text(
                          'Previous',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(20.0),
              Container(
                  padding: EdgeInsets.only(left:10),
                  child: TicketView(ticketList: ticketList[0],isColor:true),
              ),
              SizedBox(height: 1.0,),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
                margin: EdgeInsets.only(left: 10,right: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(text1:"Flutter DB",text2: "Passenger",alignment: CrossAxisAlignment.start,isColor:true),
                        ColumnLayout(text1:"5221 364869",text2: "passport",alignment: CrossAxisAlignment.end,isColor:true),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilderWidget(isColor: false, sections: 15,width: 5,),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(text1:"89774 665261",text2: "Number of E-tickets",alignment: CrossAxisAlignment.start,isColor:true),
                        ColumnLayout(text1:"B2SG28",text2: "Booking code",alignment: CrossAxisAlignment.end,isColor:true),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilderWidget(isColor: false, sections: 15,width: 5,),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('images/visa.png',scale: 11,),
                                Text(" *** 2462",style: Styles.headlineStyle3,)
                              ],
                            ),
                            Gap(5),
                            Text("Payment method",style: Styles.headlineStyle4,)
                          ],
                        ),
                        ColumnLayout(text1: "\$249.99", text2: "Price", alignment: CrossAxisAlignment.end,isColor:false)
                      ],
                    ),


                  ],
                ),
              ),

              //bar code
              SizedBox(height: 1,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)
                  )
                ),
                padding: EdgeInsets.only(top: 20,bottom: 20),
                margin: EdgeInsets.only(left: 11,right: 15),
                child: Container(
                  padding:EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                        data: "https://github.com/martinovovo",
                        barcode: Barcode.code128(),
                        color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                      drawText: false,
                    ),
                  ),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.only(left:10),
                child: TicketView(ticketList: ticketList[0],),
              ),
              Gap(20)




            ],
          ),
          Positioned(
            left:21,
            top:295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:Border.all(color:Styles.textColor,width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,



              ),
            ),
          ),
          Positioned(
            right:25,
            top:295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:Border.all(color:Styles.textColor,width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,



              ),
            ),
          )
        ],
      ),
    );
  }
}

