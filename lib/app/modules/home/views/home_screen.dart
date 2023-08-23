import 'package:flutter/material.dart';

import '../../details/widgets/section_title.dart';
import '../widgets/filter.dart';
import '../widgets/home_header.dart';
import '../widgets/suggestion_list.dart';
import '../widgets/trending_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBody: true,
      body: SafeArea(
        child: ListView(
          children: const [
            HomeHeader(),
            SizedBox(height: 20),
            Filtering(),
            SizedBox(height: 20),
            SectionTitle(title: 'Trending'),
            SizedBox(height: 20),
            TrendingList(),
            SizedBox(height: 25),
            SectionTitle(title: 'Category'),
            SizedBox(height: 20),
            SuggestionList(),
          ],
        ),
      ),
    );
  }
}
