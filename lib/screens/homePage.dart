import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class ECommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> imgList = [
    'https://via.placeholder.com/600x400.png?text=Trend+1',
    'https://via.placeholder.com/600x400.png?text=Trend+2',
    'https://via.placeholder.com/600x400.png?text=Trend+3',
    'https://via.placeholder.com/600x400.png?text=Trend+4',
    'https://via.placeholder.com/600x400.png?text=Trend+5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopNow'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.amber[100],
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text('Welcome to Shopping World!',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic)),
                      Text('The ShopNow',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 40,
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: Text(
                'Recent Trends',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: imgList
                  .map((item) => Container(
                        color: const Color.fromARGB(255, 255, 218, 220),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 10),
                                child: Image.asset(
                                  'assets/logo.png', // Add your logo asset here
                                  height: 100,
                                ),
                              ),
                              const Text(
                                '50% off on Mens Wear',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 90, right: 90, top: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed('/cate');
                                  },
                                  child: const Text('View More'),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    minimumSize:
                                        const Size(double.infinity, 50),
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 130, 138),
                                    textStyle:
                                        const TextStyle(fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Top Products',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buildProductCard(
              context,
              'assets/placeholder_image.png',
              'T-Shirt',
              '50% off on paymment with MC',
              '₹500',
            ),
            buildProductCard(
              context,
              'assets/placeholder_image.png',
              'Shorts',
              'Buy 1 Get 1 free',
              '₹600',
            ),
            buildProductCard(
              context,
              'assets/placeholder_image.png',
              'Vivo v23e',
              '10% off on first shopping',
              '₹30,000',
            ),
            buildProductCard(
              context,
              'assets/placeholder_image.png',
              'Born A Crime',
              'BestSeller',
              '₹800',
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildProductCard(
  BuildContext context,
  String imagePath,
  String productName,
  String description,
  String price,
) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Card(
      elevation: 4,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                radius: 30,
              ),
              title: Text(
                productName,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xFF898989),
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              trailing: Text(
                price,
                style: const TextStyle(
                  color: Color(0xFF898989),
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Successfully added to cart'),
                          actions: [
                            TextButton(
                              child: Text('View Cart'),
                              onPressed: () {
                                Navigator.of(context).pop();
                                // Navigate to cart page
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Add to Cart'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.teal.shade700,
                    textStyle: const TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Order placed successfully'),
                          actions: [
                            TextButton(
                              child: Text('Track Order'),
                              onPressed: () {
                                Navigator.of(context).pop();
                                // Navigate to order tracking page
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Buy'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange.shade700,
                    textStyle: const TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
