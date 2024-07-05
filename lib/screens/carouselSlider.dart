

// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';


// class CarouselCommunities extends StatefulWidget {
//   @override
//   _CarouselCommunitiesState createState() => _CarouselCommunitiesState();
// }

// class _CarouselCommunitiesState extends State<CarouselCommunities> {
//   CarouselController buttonCarouselController = CarouselController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: FutureBuilder(
//         future: fetchCommunityData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             List<Widget>? carouselItems = snapshot.data;
//             return Column(
//               children: <Widget>[
//                 CarouselSlider(
//                   items: carouselItems!,
//                   carouselController: buttonCarouselController,
//                   options: CarouselOptions(
//                     autoPlay: true, 
//                     autoPlayInterval: Duration(seconds: 3), // Duration for each slide
//                     enlargeCenterPage: true,
//                     viewportFraction: 0.9,
//                     aspectRatio: 2.0,
//                     initialPage: 2,
//                   ),
//                 ),
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }

 

//   Widget buildCommunityCard(
//     String communityName,
//     int membersCount,
//     String formattedStartDate,
//     bool isActive,
//   ) {
//     return Card(
      
//       color: isActive ? Color.fromARGB(255, 255, 130, 138) : Colors.red,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
//             children: [
//               Text(
//                 communityName,
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
                  
//                 ),
//               ),
//               Text(
//                 'Members: $membersCount',
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,

//                 ),
//               ),
//               Text(
//                 'Starts on: $formattedStartDate',
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               isActive
//                   ? Container(
                    
//                     padding: EdgeInsets.symmetric(horizontal: 17,vertical: 4),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Color(0xFF002D56),
//                     ),
//                     child: Text(
//                         'ACTIVE',
//                         style: TextStyle(
//                           fontSize: 17,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
                          
//                         ),
//                       ),
//                   )
//                   : SizedBox(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }