import 'package:flutter/material.dart';

class BuildBottomNavBar extends StatefulWidget {
  @override
  _BuildBottomNavBarState createState() => _BuildBottomNavBarState();
}

class _BuildBottomNavBarState extends State<BuildBottomNavBar> {
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentSelect,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            // title: Text(
            //   'Home',
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,
            size: 30.0,
          ),
          // title: Text(
          //   'Discover',
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // ),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_outlined,
            size: 30.0,
          ),
          label: 'Message',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.wallet_giftcard,
            size: 30.0,
          ),
          // title: Text(
          //   'Wallet',
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // ),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.people,
            size: 30.0,
          ),
          // title: Text(
          //   'Profile',
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // ),
          backgroundColor: Colors.white,
        )
      ],
      onTap: (index) {
        setState(() {
          currentSelect = index;
        });
      },
    );
  }
}
