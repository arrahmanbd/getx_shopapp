import 'package:get/get.dart';
import 'package:zainik_task/app/modules/discovery/controllers/discovery_controller.dart';

import '../controllers/startpage_controller.dart';

class StartpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartpageController>(
      () => StartpageController(),
    );
     Get.lazyPut<DiscoveryController>(
      () => DiscoveryController(),
    );
  }
}
