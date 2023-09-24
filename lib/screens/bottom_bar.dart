
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:movie_flutter/screens/bottom_bar.dart';
import 'package:movie_flutter/screens/home_page.dart';
import 'package:movie_flutter/screens/profile_page.dart';
import 'package:movie_flutter/screens/search_page.dart';
import 'package:movie_flutter/screens/ticket_page.dart';

class BottomBar extends StatefulWidget {


  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions = <Widget>[
    HomePage(),
    // const Text('Search'),
    SearchPage(),
    // const Text('Tickets'),
    TicketPage(),
    // const Text('Profile')
    ProfilePage()
  ];

  void _onTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
    // print('Tapped index is ${_selectedIndex}');
  }

  // const BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
          child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        elevation: 10,
          showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type:BottomNavigationBarType.fixed,
        unselectedItemColor:const Color(0xFF526480),

        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(FluentIcons.home_20_regular),
            activeIcon: Icon(FluentIcons.home_12_filled),
            label:'Home',

          ),
          BottomNavigationBarItem(icon: Icon(FluentIcons.search_12_regular),
              activeIcon: Icon(FluentIcons.search_12_filled),
              label:'Search'
          ),
          BottomNavigationBarItem(icon: Icon(FluentIcons.ticket_diagonal_16_regular),
              activeIcon: Icon(FluentIcons.ticket_diagonal_16_filled),
              label:'Ticket'
          ),
          BottomNavigationBarItem(icon: Icon(FluentIcons.person_5_20_regular),
              activeIcon: Icon(FluentIcons.person_5_20_filled),
              label:'Profile'
          ),

        ],
      ),


    );


  }
}
