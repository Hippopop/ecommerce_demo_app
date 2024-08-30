import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/constants/paddings.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/app_bar.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/bottom_bar.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/homepage_carousel.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/horizontal_category_selector.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/single_choice_product.dart';
import 'package:ecommerce_demo_app/src/services/theme/app_theme.dart';
import 'package:ecommerce_demo_app/utilities/extensions/size_utilities.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
        ],
      ),
    );
  }
}

class GreenWorldShippingBox extends StatelessWidget {
  const GreenWorldShippingBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: all20,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.green.shade800,
          borderRadius: const BorderRadius.all(Radius.circular(14)),
        ),
        child: Padding(
          padding: all16,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "World Shopping",
                      style: context.textTheme.titleMedium?.copyWith(
                        color: textColor.withOpacity(0.9),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    6.height,
                    Text(
                      "Discount and free shipping",
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 12,
                        color: textColor.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
              ),
              DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white60,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(
                    HugeIcons.strokeRoundedArrowUpRight01,
                    size: 24,
                    color: Colors.green.shade800,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
