import 'package:flutter/material.dart';
import 'package:movie_flutter/screens/bottom_bar.dart';
import 'package:movie_flutter/screens/home_page.dart';
import 'package:movie_flutter/screens/profile_page.dart';
import 'package:movie_flutter/screens/search_page.dart';
import 'package:movie_flutter/utils/styles.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
      primaryColor: primary
      ),
        home: BottomBar(),

      // initialRoute: HomePage.id,
      // routes:{
      //   HomePage.id:(context)=>HomePage(),
      //   SearchPage.id:(context)=>SearchPage(),
      //   ProfilePage.id:(context)=>ProfilePage()
      //
      // }
    );

  }
}
