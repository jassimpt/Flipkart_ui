import 'package:flipkart_ui/pages/account.dart';
import 'package:flipkart_ui/pages/cart.dart';

import 'package:flipkart_ui/pages/categories.dart';
import 'package:flipkart_ui/pages/home.dart';
import 'package:flipkart_ui/pages/notifications.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedindex = 0;

  void _bottomnavigator(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    Categories(),
    Notifications(),
    Account(),
    Cart()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _bottomnavigator,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png',
                  height: 25, color: Color.fromARGB(255, 4, 97, 236)),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/search.png',
                  height: 25, color: Color.fromARGB(255, 4, 97, 236)),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/notification.png',
                  height: 25, color: Color.fromARGB(255, 4, 97, 236)),
              label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/user.png',
                  height: 25, color: Color.fromARGB(255, 4, 97, 236)),
              label: 'Account'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/add-cart.png',
                  height: 25, color: Color.fromARGB(255, 4, 97, 236)),
              label: 'Cart'),
        ],
      ),
    );
  }
}
