import 'package:get/get.dart';

import '../../discovery/controllers/discovery_controller.dart';
import '../controllers/home_controller.dart';

class gHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
     Get.lazyPut<DiscoveryController>(
      () => DiscoveryController(),
    );
  }
}
