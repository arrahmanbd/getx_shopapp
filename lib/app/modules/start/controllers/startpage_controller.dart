import 'package:get/get.dart';

class StartpageController extends GetxController {
  var tabIndex = 0.obs;
  RxList tabs = ['Home','Discovery','','Inbox','Shop'].obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
