import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie_flutter/utils/app_layout.dart';
import 'package:movie_flutter/utils/styles.dart';
import 'package:movie_flutter/widgets/icon_app_text.dart';

class SearchPage extends StatelessWidget {
  // static const id="search_page";
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Gap(40),
          Container(

            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('What are\nyou looking for?',style: Styles.headlineStyle1.copyWith(fontSize: 35),),

                Gap(20),
                FittedBox(
                  child: Container(
                    padding: EdgeInsets.all(3.5),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     color: Color(0xFFF4F6FD)
                   ),
                    child: Row(
                      children: [
                        Container(
                          width: size.width*.44,
                            padding: EdgeInsets.symmetric(horizontal: 7.0,vertical: 7.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40)),
                                color: Colors.white
                            ),
                          child: Center(child: Text('Airlines tickets')),

                        ),
                        Container(
                          width: size.width*.44,
                          padding: EdgeInsets.symmetric(horizontal: 7.0,vertical: 7.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)),
                              color: Colors.transparent
                          ),
                          child: Center(child: Text('Hotels')),

                        )
                      ],
                    ),

                  ),
                ),
                Gap(25),

                AppIconText(icon: FluentIcons.airplane_take_off_16_regular, text: 'Departure',),
                Gap(15),
                AppIconText(icon: FluentIcons.airplane_landing_16_regular, text: 'Arrival',),

                Gap(15),

                Material(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xD91130CE),
                  elevation: 5.0,
                  child: MaterialButton(
                    minWidth: size.width,
                    onPressed: (){},
                    child: TextButton(
                      onPressed: (){},
                      child: Center(
                        child: Text('Find tickets',style: Styles.textStyle.copyWith(color: Colors.white),)
                      )
                    ),
                  ),
                ),

                Gap(30),
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
          Container(
            margin: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 400,
                  width: size.width*.42,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
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
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('images/seat.jpeg'),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                      Gap(10),
                      Text('20% discount on the early bookings of this flight, Don\'t miss out this chance',
                      style: Styles.headlineStyle2,)
                    ],
                  ),
                ),
                Column(
                  children: [
                      Stack(
                        children: [
                          Container(
                            width: size.width*.44,
                            height: 174,
                            decoration: BoxDecoration(
                              color: Color(0xFF3AB888),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discount\nfor survey',
                                  style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),

                                ),
                                Gap(10),
                                Text(
                                  'Take the survey about our services and get discount',
                                  style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),

                                ),

                              ],
                            ),
                          ),
                          Positioned(
                              right: -45,
                              top: -40,
                              child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:Border.all(width: 18,color: Color(0xFF189999)),
                                color: Colors.transparent

                            ),
                          ),
                          )
                        ],
                      ),
                    Gap(15),
                    Container(
                      width: size.width*.44,
                      height:210,
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xFFEC6545)

                      ),
                      child: Column(
                        children: [
                          Text('Take love',
                            textAlign: TextAlign.center,
                            style: Styles.headlineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                          Gap(10),
                          RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 30)
                              ),
                              TextSpan(
                                  text: '🥰',
                                  style: TextStyle(fontSize: 50)
                              ),
                              TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 30)
                              ),
                            ]
                          ),
                          textAlign: TextAlign.center,)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}

