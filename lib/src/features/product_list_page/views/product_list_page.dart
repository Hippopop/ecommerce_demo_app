import 'dart:math';

import 'package:ecommerce_demo_app/src/constants/assets.dart';
import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/constants/paddings.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/bottom_bar.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/horizontal_category_selector.dart';
import 'package:ecommerce_demo_app/src/features/homepage/views/components/single_choice_product.dart';
import 'package:ecommerce_demo_app/utilities/extensions/size_utilities.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    const productList = [
      PngAssets.productZero,
      PngAssets.productFour,
      PngAssets.productThree,
      PngAssets.productTwo,
      PngAssets.productOne,
      PngAssets.productZero,
      PngAssets.productFour,
      PngAssets.productThree,
      PngAssets.productTwo,
      PngAssets.productOne,
    ];
    return Scaffold(
      bottomNavigationBar: const CustomBottomBar(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: backgroundColor,
        title: const Text("Gadget Day"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              HugeIcons.strokeRoundedSearch01,
              size: 24,
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: 12.height),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: [
                  const Expanded(
                    child: HorizontalCategorySelector(),
                  ),
                  12.width,
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      HugeIcons.strokeRoundedCustomize,
                      size: 24,
                    ),
                  ),
                  12.width,
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: horizontal20,
            sliver: SliverGrid.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final product = productList[index];
                return AnimatedProductWidget(
                  index: index,
                  product: product,
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
                mainAxisSpacing: 16,
                crossAxisSpacing: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedProductWidget extends StatefulWidget {
  const AnimatedProductWidget({
    super.key,
    required this.product,
    required this.index,
  });

  final int index;
  final String product;

  @override
  State<AnimatedProductWidget> createState() => _AnimatedProductWidgetState();
}

class _AnimatedProductWidgetState extends State<AnimatedProductWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Durations.medium4,
    );
    Future.delayed(Duration(milliseconds: min(800, (widget.index % 2) * 100)))
        .then(
      (value) {
        controller.forward();
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: controller.drive(
        Tween(begin: const Offset(0, -0.5), end: Offset.zero),
      ),
      child: SingleChoiceProductWidget(
        isNew: widget.product.length.isEven,
        imageLink: widget.product,
      ),
    );
  }
}
