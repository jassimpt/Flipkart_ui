import 'dart:ffi';

import 'package:flipkart_ui/pages/cart.dart';
import 'package:flutter/material.dart';

class Myorders extends StatelessWidget {
  const Myorders({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'My Orders',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/search-interface-symbol.png',
                height: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/add-cart.png',
                height: 25,
              ))
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal:
                        BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)))),
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
                  child: SizedBox(
                    height: 40,
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Your Order Here',
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Image.asset(
                    'assets/icons/sort.png',
                    height: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Filters',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    'assets/images/laptop-sm (1).png',
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Delivered on Aug 12',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('HP 247 G8 Ryzen 3..'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/icons/rating.png',
                      height: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Rate this product now')
                  ],
                ),
                Text('>')
              ],
            ),
          )
        ],
      ),
    ));
  }
}
