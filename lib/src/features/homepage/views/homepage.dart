import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/app_bar.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/bottom_bar.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/homepage_carousel.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/horizontal_category_selector.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/single_choice_product.dart';
import 'package:ecommerce_demo_app/utilities/extensions/size_utilities.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: const CustomBottomBar(),
      body: ListView(
        children: [
          16.height,
          const HorizontalCategorySelector(),
          24.height,
          const HomepageCarousel(),
          16.height,
          Center(
            child: SmoothPageIndicator(
              controller: PageController(),
              count: 4,
              effect: const ExpandingDotsEffect(
                radius: 6,
                dotWidth: 8,
                dotHeight: 6,
                expansionFactor: 2.5,
                dotColor: secondaryText,
                activeDotColor: textColor,
              ),
            ),
          ),
          16.height,
          const ElasticChoiceTitle(),
          const ChoiceProductArea(),
        ],
      ),
    );
  }
}
