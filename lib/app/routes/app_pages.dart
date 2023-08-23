import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../modules/details/bindings/details_binding.dart';
import '../modules/details/views/details_view.dart';
import '../modules/discovery/bindings/discovery_binding.dart';
import '../modules/discovery/models/discovery_models.dart';
import '../modules/discovery/views/discovery_view.dart';
import '../modules/home/views/home_screen.dart';
import '../modules/inbox/bindings/inbox_binding.dart';
import '../modules/inbox/views/inbox_view.dart';
import '../modules/shop/bindings/shop_binding.dart';
import '../modules/shop/views/shop_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/start/bindings/startpage_binding.dart';
import '../modules/start/views/startpage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
        name: _Paths.SPLASH,
        page: () => const SplashView(),
        binding: SplashBinding(),
        transition: Transition.cupertinoDialog,
        transitionDuration: 350.ms),
    GetPage(
        name: _Paths.STARTPAGE,
        page: () => const StartpageView(),
        binding: StartpageBinding(),
        transition: Transition.downToUp,
        transitionDuration: 350.ms),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: StartpageBinding(),
    ),
    GetPage(
        name: _Paths.DISCOVERY,
        page: () => const DiscoveryView(),
        binding: DiscoveryBinding(),
        transition: Transition.downToUp,
        transitionDuration: 350.ms),
    GetPage(
      name: _Paths.INBOX,
      page: () => const InboxView(),
      binding: InboxBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => const ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS,
      page: () =>  DetailsView(products: Get.arguments['product'] as Product,),
      binding: DetailsBinding(),
      transition: Transition.downToUp,
        transitionDuration: 350.ms),
    
  ];
}
