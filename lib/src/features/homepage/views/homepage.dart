import 'package:ecommerce_demo_app/src/features/homepage/views/components/app_bar.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/bottom_bar.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/green_world_shipping_box.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/homepage_carousel.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/horizontal_category_selector.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/single_choice_product.dart';
import 'package:ecommerce_demo_app/utilities/extensions/size_utilities.dart';
import 'package:flutter/material.dart';

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
          const ElasticChoiceTitle(),
          const ChoiceProductArea(),
          const GreenWorldShippingBox(),
          12.height,
          const ElasticChoiceTitle(),
          const ChoiceProductArea(),
        ],
      ),
    );
  }
}
