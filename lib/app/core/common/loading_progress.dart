import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zainik_task/app/core/constants/colors.dart';
import 'package:zainik_task/app/core/constants/values.dart';

class LoadingProgress extends StatelessWidget {
  final int? itemCount;
  const LoadingProgress({
    Key? key,
    this.itemCount,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultSpacing, vertical: defaultSpacing),
        reverse: false,
        crossAxisCount: 3,
        mainAxisSpacing: 5,
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
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Shimmer(
            direction: ShimmerDirection.ltr,
            gradient: ColorPalette.gradient,
            child: Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 255, 253, 253),
              ),
            ),
          );
        });
  }
}
