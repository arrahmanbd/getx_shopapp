import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zainik_task/app/core/constants/colors.dart';

import '../../../core/common/input_field.dart';
import '../controllers/discovery_controller.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class ExploreSearchForm extends StatelessWidget {
  const ExploreSearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
          ),
          child: const InputField(
            icon: 'search',
            hintText: 'Search in Swipexyz',
            type: TextInputType.text,
          ),
        );
      }
}
