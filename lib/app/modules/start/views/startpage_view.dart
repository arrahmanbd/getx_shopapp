import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zainik_task/app/core/constants/image_assets.dart';
import 'package:zainik_task/app/core/widgets/empty_screen.dart';
import 'package:zainik_task/app/modules/home/views/home_screen.dart';
import 'package:zainik_task/app/modules/inbox/views/inbox_view.dart';
import 'package:zainik_task/app/modules/shop/views/shop_view.dart';

import '../../../core/common/alert_dialouge.dart';
import '../../../core/constants/colors.dart';
import '../../../core/utils/utils.dart';
import '../../discovery/views/discovery_view.dart';
import '../controllers/startpage_controller.dart';
import '../widgets/tab_icon.dart';

class StartpageView extends StatelessWidget {
  const StartpageView({super.key});

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(
      () => BottomNavigationBar(
        backgroundColor: ColorPalette.primaryLight,
        selectedLabelStyle: const TextStyle(color: ColorPalette.primary),
        selectedIconTheme: const IconThemeData(color: ColorPalette.primary),
        onTap: landingPageController.changeTabIndex,
        unselectedFontSize: 12,
        currentIndex: landingPageController.tabIndex.value,
        items: [
          for (int i = 0; i < landingPageController.tabs.length; i++)
            BottomNavigationBarItem(
              icon: TabIcon(
                  color: i == landingPageController.tabIndex.value
                      ? ColorPalette.primary
                      : ColorPalette.unSelectedBottombar.withOpacity(0.4),
                  iconName: landingPageController.tabs[i],
                  index: i),
              label: landingPageController.tabs[i],
            ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorPalette.primary,
        unselectedLabelStyle: TextStyle(
            color: ColorPalette.secondaryDark.withOpacity(0.4),
            fontSize: 12,
            fontWeight: FontWeight.w500),
        iconSize: 24,
        selectedFontSize: 12,
        elevation: 6,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final StartpageController landingPageController =
        Get.put(StartpageController(), permanent: false);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:
            buildBottomNavigationMenu(context, landingPageController),
        body: Obx(
          () => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              const HomeView(),
              const DiscoveryView(),
              Empty(
                action: () {},
                ButtonText: 'Show Alert',
                image: 'add_user',
                title: 'Click for Alert View',
                subTitle: 'According to your design here comes the alert',
              ),
              const InboxView(),
              const ShopView(),
            ],
          ),
        ),
      ),
    );
  }
}
