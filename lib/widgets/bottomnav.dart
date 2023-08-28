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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        ],
      ),
    );
  }
}
