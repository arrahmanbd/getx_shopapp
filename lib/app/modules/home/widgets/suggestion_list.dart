import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:zainik_task/app/core/constants/colors.dart';
import '../../../data/dummy.dart';

class SuggestionList extends StatelessWidget {
  const SuggestionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: suggestion.length * 85,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: suggestion.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: ColorPalette.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Image.asset(suggestion[index]['imageUrl']),
              ),
            ).animate().fade().slideX(
                  duration: 280.ms,
                  begin: -2,
                  curve: Curves.easeInSine,
                ),
            title: Text(
              suggestion[index]['title'],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              suggestion[index]['subtitle'],
              style: const TextStyle(
                color: Colors.black38,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: ColorPalette.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
