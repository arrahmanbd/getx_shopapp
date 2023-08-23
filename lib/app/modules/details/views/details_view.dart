import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../discovery/models/discovery_models.dart';
import '../../home/widgets/section_title.dart';
import '../controllers/details_controller.dart';
import '../widgets/detail_footer.dart';
import '../widgets/detail_header.dart';
import '../widgets/detail_info.dart';
import '../widgets/photo_list.dart';

class DetailsView extends GetView<DetailsController> {
  final Product products;
  const DetailsView({super.key, 
    required this.products,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: ListView(
            children: [
              DetailHeader(item: products),
              const SizedBox(height: 15),
              const SectionTitle(
                title: 'Images',
              ),
              const SizedBox(height: 15),
              PhotoList(photos: products.images as List<String>),
              const SizedBox(height: 20),
              // suggestion text
               DetailInfo(
                title: 'Description',
                description:products.description.toString(),
              ),
              const SizedBox(height: 20),
              const DetailInfo(
                title: 'Location',
                description: 'Khulna \n4 km away from your location.',
              ),
              const SizedBox(height: 20),
              const DetailFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
