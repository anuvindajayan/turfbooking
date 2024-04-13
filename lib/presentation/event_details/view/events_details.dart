import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EventDetailsScreen extends StatelessWidget {
  final List<String> images = [
    'assets/splash/crickets.jpg',
    'assets/splash/tournaments.jpg',
    'assets/splash/crickets.jpg',
    'assets/splash/tournaments.jpg',
  ];
  final List<String> footballimages = [
    "assets/splash/tournaments.jpg",
    "assets/splash/tournaments.jpg",
    "assets/splash/tournaments.jpg",
    "assets/splash/tournaments.jpg"
  ];
  final List<String> cricketImages = [
    'assets/splash/crickets.jpg',
    'assets/splash/crickets.jpg',
    'assets/splash/crickets.jpg',
    'assets/splash/crickets.jpg',
  ];
  final List<String> badmintonImages = [
    "assets/splash/badmintons.jpeg",
    "assets/splash/badmintons.jpeg",
    "assets/splash/badmintons.jpeg",
    "assets/splash/badmintons.jpeg"
  ];

  EventDetailsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "Events",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: images.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Football",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      4,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green),
                                child: Image.asset(
                                  footballimages[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Cricket",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      4,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue),
                              child: Image.asset(cricketImages[index],
                                  fit: BoxFit.fill),
                            ),
                          ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Badminon",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      4,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red),
                              child: Image.asset(badmintonImages[index],
                                  fit: BoxFit.fill),
                            ),
                          ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Hokey",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      5,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.yellow),
                            ),
                          ))),
            )
          ],
        ),
      ]),
    );
  }
}
