import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/constants/paddings.dart';
import 'package:ecommerce_demo_app/src/services/theme/app_theme.dart';
import 'package:ecommerce_demo_app/utilities/extensions/size_utilities.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
