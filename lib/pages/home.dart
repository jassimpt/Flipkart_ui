import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isswitched = false;

  List imagelist = [
    {"id": 1, "image_path": 'assets/images/offer-image1.jpg'},
    {"id": 2, "image_path": 'assets/images/offer-image2.jpg'},
    {"id": 3, "image_path": 'assets/images/offer-image3.jpg'},
    {"id": 4, "image_path": 'assets/images/offer-image4.jpg'},
    {"id": 5, "image_path": 'assets/images/offer-image5.jpg'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStatePropertyAll(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          width: 150,
                          height: 40,
                          child: Image.asset(
                            'assets/images/flipkart logo.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          elevation: MaterialStatePropertyAll(0),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 240, 239, 239)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/flipkartlogo.png',
                          height: 20,
                        ),
                        label: Text(
                          "Grocery",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Brand Mall'),
                      Switch(
                        value: isswitched,
                        onChanged: (value) {
                          setState(() {
                            isswitched = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 50,
                        width: 10,
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 240, 239, 239),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'Search for products',
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  InkWell(
                    onTap: () => print(currentindex),
                    child: CarouselSlider(
                      items: imagelist
                          .map((item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ))
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentindex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 160,
                    child: AnimatedSmoothIndicator(
                        activeIndex: currentindex,
                        count: imagelist.length,
                        effect: WormEffect(
                            dotWidth: 10,
                            dotHeight: 10,
                            activeDotColor: Colors.white,
                            dotColor: Colors.grey)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 239, 239),
                            radius: 30,
                            child: Image.asset(
                              'assets/images/camera.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Camera',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 239, 239),
                            radius: 30,
                            child: Image.asset(
                              'assets/images/coupons.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Coupons',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 239, 239),
                            radius: 30,
                            child: Image.asset(
                              'assets/images/creditcard.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Creditcards',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 239, 239),
                            radius: 30,
                            child: Image.asset(
                              'assets/images/Flipkart-SuperCoin.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Supercoin',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 239, 239),
                            radius: 30,
                            child: Image.asset(
                              'assets/images/flipkartplus-bg.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Flipkart +',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 239, 239),
                            radius: 30,
                            child: Image.asset(
                              'assets/images/groupbuy.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Group Buy',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 239, 239),
                            radius: 30,
                            child: Image.asset(
                              'assets/images/joystick.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Games',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(children: [
                  dealcards(
                      image: 'assets/images/laptop-sm (1).png',
                      text1: 'Laptop Deals',
                      text2: 'From ₹14,990'),
                  SizedBox(
                    width: 10,
                  ),
                  dealcards(
                    image: 'assets/images/grocery.png',
                    text1: 'Extra ₹75 off',
                    text2: 'Sale is Live',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  dealcards(
                    image: 'assets/images/boat (1).png',
                    text1: 'BT Calling | 1.83',
                    text2: 'Sale Price ₹1,499',
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Recently Viewed Stores',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    recentstores(
                        bgimage: 'assets/images/bedsheet.jpg',
                        bgtext: 'Bedsheets'),
                    recentstores(
                        bgimage: 'assets/images/tv.jpg', bgtext: 'Smart Tv'),
                    recentstores(
                        bgimage: 'assets/images/protein.jpg',
                        bgtext: 'Protein Powder'),
                    recentstores(
                        bgimage: 'assets/images/keyboards-final.jpg',
                        bgtext: 'Keyboards'),
                    recentstores(
                        bgimage: 'assets/images/headphones.jpg',
                        bgtext: 'Headphones')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sponsored',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  sponsoreddeals(
                      brandimage: 'assets/images/firebolt.jpg',
                      text1: 'Sale Tomorrow',
                      text2: 'Spl.Price ₹2,999'),
                  sponsoreddeals(
                      brandimage: 'assets/images/voltas.jpg',
                      text1: 'Inverter AC',
                      text2: 'Up to 46% Off'),
                  sponsoreddeals(
                      brandimage: 'assets/images/bota.jpg',
                      text1: 'BT Calling |1.85',
                      text2: 'Just ₹1,299')
                ],
              ),
              Row(
                children: [
                  sponsoreddeals(
                      brandimage: 'assets/images/jbl.jpg',
                      text1: 'Best of Speakers',
                      text2: 'From ₹1,799'),
                  sponsoreddeals(
                      brandimage: 'assets/images/iPhone-14.jpg',
                      text1: 'Deal On Iphone',
                      text2: 'Up to 20% Off'),
                  sponsoreddeals(
                      brandimage: 'assets/images/gaming laptop.jpg',
                      text1: 'Gaming Laptops',
                      text2: 'Flat 10% Off')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding sponsoreddeals(
      {required String brandimage,
      required String text1,
      required String text2}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 116,
        height: 160,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3),
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.asset(
                  brandimage,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              text1,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            Text(
              text2,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  Padding recentstores({required String bgimage, required String bgtext}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 135,
        height: 170,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3),
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.asset(
                  bgimage,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              bgtext,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  Row dealcards({
    required String image,
    required String text1,
    required String text2,
  }) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: 120,
              height: 140,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    child: Image.asset(
                      'assets/images/bg.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  text1,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Positioned(
              left: 8,
              top: 6,
              child: Container(
                child: Image.asset(
                  image,
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 239, 239),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                width: 105,
                height: 90,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
