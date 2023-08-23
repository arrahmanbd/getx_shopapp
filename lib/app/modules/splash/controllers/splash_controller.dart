import 'package:get/get.dart';
import 'package:zainik_task/app/routes/app_pages.dart';

class SplashController extends GetxController {
  static const delay = Duration(seconds: 2);
  @override
  void onInit() {
    Future.delayed(delay, () => afterEnd());
    super.onInit();
  }

 void  afterEnd() {
    Get.toNamed(Routes.STARTPAGE);
  }
}
