import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('All Categories'),
        backgroundColor: Color.fromARGB(255, 4, 97, 236),
        actions: [Icon(Icons.search)],
      ),
      body: GridView.count(crossAxisCount: 3, children: [
        griditems(image: 'assets/images/offerzone.png', text: 'Offer Zone'),
        griditems(image: 'assets/images/mobiles.png', text: 'Mobiles'),
        griditems(image: 'assets/images/fashion.png', text: 'Fashion'),
        griditems(image: 'assets/images/electronics.png', text: 'Electronics'),
        griditems(image: 'assets/images/home.png', text: 'Home'),
        griditems(
            image: 'assets/images/personalcare.png', text: 'Personal Care'),
        griditems(image: 'assets/images/appliances.png', text: 'Appliances'),
        griditems(image: 'assets/images/toys.png', text: 'Toys & Baby'),
        griditems(image: 'assets/images/fruniture.png', text: 'Furniture'),
        griditems(
            image: 'assets/images/flights and hotels.png',
            text: 'Flights & Hotels'),
        griditems(image: 'assets/images/isurance.png', text: 'Insurance'),
        griditems(image: 'assets/images/sports.png', text: 'Sports'),
        griditems(image: 'assets/images/nutrition.png', text: 'Nutrition'),
        griditems(
            image: 'assets/images/bikes and cars.png', text: 'Bikes & Cars'),
        griditems(image: 'assets/images/giftcards.png', text: 'Gift Cards'),
        griditems(image: 'assets/images/medicines.png', text: 'Medicines'),
        griditems(
            image: 'assets/images/home services.png', text: 'Home Services'),
        griditems(
            image: 'assets/images/personal loan.png', text: 'Personal Loan'),
      ]),
    );
  }

  Padding griditems({required String image, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              height: 120,
              width: 120,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  image,
                ),
              ),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 238, 236),
                  shape: BoxShape.circle),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
