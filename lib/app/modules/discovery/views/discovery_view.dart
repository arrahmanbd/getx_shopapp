import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:zainik_task/app/routes/app_pages.dart';

import '../../../core/common/general_exception.dart';
import '../../../core/common/internet_exceptions_widget.dart';
import '../../../core/constants/colors.dart';
import '../../../core/common/loading_progress.dart';
import '../widgets/search.dart';
import '../../../data/response/status.dart';
import '../controllers/discovery_controller.dart';

class DiscoveryView extends GetView<DiscoveryController> {
  const DiscoveryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const ExploreSearchForm(),
            const Divider(color: ColorPalette.secondaryLight, height: 1),
            Expanded(
              child: Obx(
                () {
                  switch (controller.rxRequestStatus.value) {
                    case Status.loading:
                      return const LoadingProgress(
                        itemCount: 21,
                      );
                    case Status.error:
                      if (controller.error.value == 'No internet') {
                        return InterNetExceptionWidget(
                          onPress: () {
                            controller.refreshApi();
                          },
                        );
                      } else {
                        return GeneralExceptionWidget(onPress: () {
                          controller.refreshApi();
                        });
                      }
                    case Status.success:
                      var item = controller.discoveryModel.value.products;
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            controller.refreshApi();
                          },
                          child: StaggeredGridView.countBuilder(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            reverse: false,
                            crossAxisCount: 3,
                            itemCount: item!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.DETAILS, arguments: {
                                    'product': item[index],
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: ColorPalette.secondaryLight),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      item[index].thumbnail.toString(),
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ).animate().fade().slideX(
                                      duration: 250.ms,
                                      delay: 50.ms + index.ms,
                                      begin: -1,
                                      curve: Curves.easeInSine,
                                    ),
                              );
                            },
                            staggeredTileBuilder: (int index) {
                              if (index == 0 || index == 1 || index == 2) {
                                // First 3 items should be 1x1 tiles
                                return const StaggeredTile.count(1, 0.85);
                              } else if (index % 7 == 0) {
                                // Every 7th item should be a 2x2 tile
                                return const StaggeredTile.count(2, 1.7);
                              } else {
                                // Every other item should be a 1x2 tile
                                return const StaggeredTile.count(1, 0.85);
                              }
                            },
                            mainAxisSpacing: 6,
                            crossAxisSpacing: 6,
                          ),
                        ),
                      );
                  }
                },
              ),
            ),
          ],
        ).animate().fadeIn(begin: -1,duration: 400.ms),
      ),
    );
  }
}
