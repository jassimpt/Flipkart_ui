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
        body: Column(
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
                        width: 150, // Adjust width as needed
                        height: 40, // Adjust height as needed
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
            )
          ],
        ),
      ),
    );
  }
}
