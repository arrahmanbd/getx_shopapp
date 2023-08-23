import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zainik_task/app/core/constants/colors.dart';
import 'package:zainik_task/app/core/widgets/empty_screen.dart';

import '../../../core/constants/image_assets.dart';
import '../../../data/dummy.dart';
import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  const ShopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Empty(image: 'empty', title: 'No product yet,', subTitle: "Buy your first product, You'll find your\nproducts all right here.", action: (){}, ButtonText: 'Shop Now',)
      
    );
  }

}
