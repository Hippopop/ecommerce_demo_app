import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/constants/paddings.dart';
import 'package:ecommerce_demo_app/src/services/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HorizontalCategorySelector extends StatefulWidget {
  const HorizontalCategorySelector({
    super.key,
  });

  @override
  State<HorizontalCategorySelector> createState() =>
      _HorizontalCategorySelectorState();
}

class _HorizontalCategorySelectorState
    extends State<HorizontalCategorySelector> {
  int selectedIndex = 0;
  final itemList = [
    "Promo",
    "Best Deals",
    "Windy Basic",
    "Special",
    "Promo",
    "Best Deals",
    "Windy Basic",
    "Special",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView(
        padding: horizontal20,
        scrollDirection: Axis.horizontal,
        children: itemList.indexed.map(
          (element) {
            final (index, text) = element;
            final isSelected = selectedIndex == index;
            return InkWell(
              onTap: () => setState(() {
                selectedIndex = index;
              }),
              customBorder: const StadiumBorder(),
              child: Card(
                clipBehavior: Clip.hardEdge,
                shape: const StadiumBorder(),
                color: isSelected ? primaryColor : extraBackground,
                child: Padding(
                  padding: horizontal16,
                  child: Center(
                    child: Text(
                      text,
                      style: context.textTheme.titleMedium,
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
