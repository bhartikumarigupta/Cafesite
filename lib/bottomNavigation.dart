import 'package:flutter/material.dart';
import 'package:login/HomePage.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Profile',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Wallet',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Delete',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Message',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: size.width * 0.9,
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Color.fromRGBO(51, 51, 51, 0.93),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 60,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildTabItem(index: 0, icon: Icons.home_outlined),
                buildTabItem(index: 1, icon: Icons.person),
                buildTabItem(index: 2, icon: Icons.account_balance_wallet),
                buildTabItem(index: 3, icon: Icons.delete),
                buildTabItem(index: 4, icon: Icons.message),
              ],
            ),
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ));
  }

  Widget buildTabItem({required int index, required IconData icon}) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _selectedIndex == index ? Colors.black : Colors.transparent,
      ),
      child: IconTheme(
        data: IconThemeData(
          size: 24,
          color: Colors.white,
        ),
        child: IconButton(
          icon: Icon(icon),
          onPressed: () => _onItemTapped(index),
        ),
      ),
    );
  }
}
