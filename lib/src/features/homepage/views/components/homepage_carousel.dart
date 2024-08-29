import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/constants/paddings.dart';
import 'package:ecommerce_demo_app/src/services/theme/app_theme.dart';
import 'package:ecommerce_demo_app/utilities/extensions/size_utilities.dart';
import 'package:flutter/material.dart';

class HomepageCarousel extends StatelessWidget {
  const HomepageCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselView(
        // itemSnapping: true,
        padding: horizontal12,
        itemExtent: MediaQuery.sizeOf(context).width * 0.8,
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        children: [
          "https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAzfHxwcm9kdWN0fGVufDB8fDB8fHww",
          "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
          "https://images.unsplash.com/photo-1654399781659-5b369f891f40?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjk4fHxwdXJwbGUlMjBwcm9kdWN0fGVufDB8fDB8fHww",
          "https://images.unsplash.com/photo-1582313550743-e07900d5105c?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAwfHxwdXJwbGUlMjBwcm9kdWN0fGVufDB8fDB8fHww",
        ]
            .map(
              (imageLink) => CarouselItem(imageLink: imageLink),
            )
            .toList(),
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    super.key,
    required this.imageLink,
  });

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        SizedBox.expand(
          child: Image.network(
            imageLink,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: all20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Try Bold\nExperience",
                maxLines: 2,
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: backgroundColor,
                ),
              ),
              Text(
                "Sony think different.",
                maxLines: 2,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: backgroundColor,
                ),
              ),
              8.height,
              OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: vertical12,
                  child: Text(
                    "Discount 40%",
                    style: context.textTheme.titleMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
