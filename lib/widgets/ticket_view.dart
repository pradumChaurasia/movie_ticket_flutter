
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:movie_flutter/utils/app_layout.dart';
import 'package:movie_flutter/utils/styles.dart';
import 'package:movie_flutter/widgets/column_layout.dart';
import 'package:movie_flutter/widgets/thick_container.dart';
import 'package:movie_flutter/utils/app_info.dart';
import 'package:movie_flutter/widgets/layout_builder.dart';

class TicketView extends StatelessWidget {
  // const TicketView({super.key});
  TicketView({required this.ticketList ,this.isColor});
  final Map<String,dynamic> ticketList;
  final bool? isColor;
  // TicketView({required this.from,required this.to,required this.flying,required this.date, required this.departure,required this.num});
  //
  // final String from;
  // final String to;
  // final String flying;
  // final String date;
  // final String departure;
  // final int num;


  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return SizedBox(
        width: size.width*0.85,
      height: GetPlatform.isAndroid?165: 169,
      child:Container(
        margin: EdgeInsets.only(right: 16.0),
        child: Column(

          children: [
            //Showing the blue part
           Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                 topRight: Radius.circular(20.0)
               ),
               color: isColor==null? Color(0xFF526799):Colors.white,
             ),
             padding: EdgeInsets.all(16.0),
             child:Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [


                        Text(ticketList['from']['code'],
                          style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3,),
                        Expanded(child: Container()),
                        ThickContainer(isColor: true,),
                        Expanded(child: Stack(
                          children:[
                            SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(isColor: isColor,sections: 6,),
                                // child:LayoutBuilder(
                                //   builder: (BuildContext context,BoxConstraints constraints){
                                //     print("the width is ${constraints.constrainWidth()}");
                                //     return Flex(
                                //       direction: Axis.horizontal,
                                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //       mainAxisSize: MainAxisSize.max,
                                //       children: List.generate((constraints.constrainWidth()/6).floor(),
                                //             (index) => SizedBox(
                                //           width: 3,
                                //           height: 1,
                                //
                                //           child: DecoratedBox(
                                //
                                //             decoration: BoxDecoration(
                                //               color: isColor==null?Colors.white:Colors.grey.shade300,
                                //
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     );
                                //   },
                                //
                                // )
                            ),
                            Center(child: Transform.rotate(angle: 1.5,child:Icon(Icons.local_airport_outlined,color:isColor==null? Colors.white:Color(0xFF8ACCF7),))),
                          ],
                        )),

                        ThickContainer(isColor:true),
                        Expanded(child: Container()),
                        Text(ticketList['to']['code'],style:isColor==null?Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,),

                      ],
                    ),
                    Gap(1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                            child: Text(ticketList['from']['name'],
                            style: isColor==null? Styles.headlineStyle4.copyWith(color:Colors.white):Styles.headlineStyle4),
                        ),
                        Text(ticketList['flying_time'],style:isColor==null? Styles.headlineStyle4.copyWith(color:Colors.white):Styles.headlineStyle4,),
                        SizedBox(
                          width: 100,
                          child: Text(ticketList['to']['name'],
                              textAlign: TextAlign.end,
                              style: isColor==null? Styles.headlineStyle4.copyWith(color:Colors.white):Styles.headlineStyle4),
                        ),
                      ],
                    )
                  ],
             )
           ),

            //Showing the orange part
            Container(
              color:isColor==null?Styles.orangeColor:Colors.white,
                child:Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child:DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10.0)),
                          color: isColor==null?Colors.white:Colors.grey.shade300
                        ),
                      )
                    ),
                    Expanded(child: Padding(
                        padding:EdgeInsets.all(12),
                        child:AppLayoutBuilderWidget(isColor: isColor,sections: 15,),

                    )),

                    SizedBox(
                        height: 20,
                        width: 10,
                        child:DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10.0)),
                              color: isColor==null?Colors.white:Colors.grey.shade300
                          ),
                        )
                    )
                  ],
                )
            ),
            //Showing another orange part
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),bottomRight: Radius.circular(isColor==null?21.0:0.0)),
                  color: isColor==null?Styles.orangeColor:Colors.white
              ),
              padding: EdgeInsets.only(left: 16.0,top: 10.0,bottom: 16.0,right: 16.0),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(text1: ticketList['date'], text2: 'Date', alignment: CrossAxisAlignment.start,isColor: isColor,),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(ticketList['date'],
                      //     style:isColor==null?Styles.headlineStyle3.copyWith(color:Colors.white):Styles.headlineStyle3),
                      //     Gap(5),
                      //     Text('Date',
                      //     style: isColor==null?Styles.headlineStyle4.copyWith(color:Colors.white):Styles.headlineStyle4,),
                      //   ],
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Text(ticketList['departure_time'],
                      //         style:isColor==null?Styles.headlineStyle3.copyWith(color:Colors.white):Styles.headlineStyle3),
                      //     Gap(5),
                      //     Text('Departure time',
                      //       style: isColor==null?Styles.headlineStyle4.copyWith(color:Colors.white):Styles.headlineStyle4,),
                      //   ],
                      // ),
                      ColumnLayout(text1: ticketList['departure_time'], text2: 'Departure time', alignment: CrossAxisAlignment.center,isColor: isColor,),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(ticketList['number'].toString(),
                      //         style:isColor==null?Styles.headlineStyle3.copyWith(color:Colors.white):Styles.headlineStyle3),
                      //     Gap(5),
                      //     Text('Number',
                      //       style: isColor==null?Styles.headlineStyle4.copyWith(color:Colors.white):Styles.headlineStyle4,),
                      //   ],
                      // ),
                      ColumnLayout(text1: ticketList['number'].toString(), text2: 'Number', alignment: CrossAxisAlignment.end,isColor: isColor,)
                    ],
                  )
                ],
              )




            )


          ],
        ),
      )

    );
  }
}

