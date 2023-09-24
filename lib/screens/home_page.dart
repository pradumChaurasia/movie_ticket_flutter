import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie_flutter/utils/styles.dart';
import 'package:movie_flutter/widgets/hotel_view.dart';
import 'package:movie_flutter/widgets/ticket_view.dart';
import 'package:movie_flutter/utils/app_info.dart';

class HomePage extends StatelessWidget {
  // static const id='home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Gap(40),
          Container(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Good Morning',
                      style: Styles.headlineStyle3,),
                        Gap(
                          5.0,
                        ),
                        Text('Book Tickets',
                          style: Styles.headlineStyle1,
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/logo.png'))),
                    )
                  ],
                ),
                Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color:Color(0xFFF4F6FD)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 12.0),
                  child: Row(
                    children: [
                      Icon(FluentIcons.search_12_regular,color: Color(0xFFBFC205),),
                      Gap(10.0),
                      Text('Search',
                      style: Styles.headlineStyle4,)
                    ],
                  ),
                ),
                // TextField(
                //
                //   decoration: InputDecoration(
                //       ,
                //       contentPadding:
                //       EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                //
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(13.0)),
                //       ),
                //       // enabledBorder: OutlineInputBorder(
                //       //   borderSide: BorderSide(color: Styles.textColor, width: 1.0),
                //       //   borderRadius: BorderRadius.all(Radius.circular(13.0)),
                //       // ),
                //
                //       prefixIcon: Icon(
                //           Icons.search
                //
                //       ),
                //       // focusColor: Theme.of(context).primaryColor,
                //       hintText: 'Search'),
                //   ),
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming flights",style: Styles.headlineStyle2,),
                    InkWell(
                      onTap: (){

                      },
                      child: Text("View all",
                        style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
                    )
                  ],
                ),


              ],
            ),
          ),
          Gap(10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 16.0),
              child: Row(
                children: ticketList.map((ticket){
                  return TicketView(ticketList: ticket);
                }).toList(),
                // children: ticketList.map((ticket){
                //   return TicketView(from: ticket['from'],
                //       to: ticket['to'],
                //       flying: ticket['flying_time'],
                //       date: ticket['date'],
                //       departure: ticket['departure_time'],
                //       num: ticket['number']);
                // }).toList(),
              ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels',style:Styles.headlineStyle2),
                InkWell(
                  onTap: (){

                  },
                  child: Text('View all',style: Styles.textStyle.copyWith(color:Styles.primaryColor),),
                )
              ],

            ),
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16.0),

            child: Row(
              children: hotelList.map((hotel){
                return HotelView(image: hotel['image'],place: hotel['place'], destination: hotel['destination'],price: hotel['price'],);
              }).toList()
              // children: [
              //   HotelView(image: hotelList[0]['place'], place: hotelList[0]['destination'],price: hotelList[0]['price'],),
              //   HotelView(image: hotelList[1]['place'], place: hotelList[1]['destination'],price: hotelList[1]['price'],),
              //   HotelView(image: hotelList[2]['place'], place: hotelList[2]['destination'],price: hotelList[2]['price'],)
              //
              // ],
            ),
          )
        ],
      ),
    );
  }
}
