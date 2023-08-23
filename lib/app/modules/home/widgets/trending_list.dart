import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zainik_task/app/modules/discovery/models/discovery_models.dart';
import 'package:zainik_task/app/routes/app_pages.dart';

import '../../../data/dummy.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 346,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 14),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: dummyphotos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 25),
            child: GestureDetector(
              onTap: () {
                Product product = Product(
                        id: trending[index]['id'],
                        title: trending[index]['title'],
                        description: trending[index]['description'],
                        price: 65,
                        discountPercentage: 43,
                        rating: 6.7,
                        stock: 0,
                        brand: trending[index]['brand'],
                        category: trending[index]['category'],
                        thumbnail: trending[index]['thumbnail'],
                        images: trending[index]['images'],
                      );
                Get.toNamed(Routes.DETAILS,arguments: {'product': product});
               
              },
              child: Stack(
                children: [
                  SizedBox(
                    height: 346,
                    width: 245,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        dummyphotos[index],
                        fit: BoxFit.cover,
                        color: const Color.fromARGB(255, 26, 23, 23).withOpacity(0.3),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          trending[index]['title'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          trending[index]['brand'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
