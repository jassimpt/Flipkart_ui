import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Notifications(4)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 40,
                  width: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text('All',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 4, 97, 236)),
                        textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 229, 255),
                      border:
                          Border.all(color: Color.fromARGB(255, 4, 97, 236)),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
              Container(
                width: 130,
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/icons/box.png',
                      height: 25,
                      color: Color.fromARGB(255, 128, 128, 128),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Order Info',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border:
                        Border.all(color: Color.fromARGB(255, 128, 128, 128))),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 100,
                height: 40,
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/icons/discount.png',
                      height: 25,
                      color: Color.fromARGB(255, 128, 128, 128),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Offers',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border:
                        Border.all(color: Color.fromARGB(255, 128, 128, 128))),
              )
            ],
          ),
          notificatons(context,
              image: 'assets/icons/discount.png',
              text1: 'Get Easy Loan!',
              text2: 'Get Personal Loan Up to 5Lakhs at 12.5% interest p.a',
              text3: 'Apply & get approval in just 30 Secs >',
              text4: '14 Hours Ago'),
          notificatons(context,
              image: 'assets/icons/discount.png',
              text1: 'Atta,Rice,Oil.. Up to 50% Off!',
              text2: 'No min.order value! Avail Free Shipping',
              text3: 'Min.600! Shop Now >',
              text4: '4 days ago'),
          notificatons(context,
              image: 'assets/icons/box.png',
              text1: 'Order Delivered!',
              text2: 'Your Product containing HP Laptop',
              text3: 'has been delivered',
              text4: '18 days ago'),
          notificatons(context,
              image: 'assets/icons/discount.png',
              text1: 'Great Choice',
              text2: 'Going by your likes,we have handpicked these',
              text3: 'recommendations to go with your laptops',
              text4: '22 days ago')
        ],
      ),
    ));
  }

  Container notificatons(BuildContext context,
      {required String image,
      required String text1,
      required String text2,
      required String text3,
      required String text4}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 50, right: 10),
            child: Image.asset(image,
                color: Color.fromARGB(255, 4, 97, 236), height: 20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                text1,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(text2),
              Text(text3),
              SizedBox(
                height: 10,
              ),
              Text(
                text4,
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 170, 170, 170)),
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: const Color.fromARGB(255, 170, 170, 170)))),
    );
  }
}
