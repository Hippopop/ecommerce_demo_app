import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_demo_app/src/constants/assets.dart';
import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/constants/paddings.dart';
import 'package:ecommerce_demo_app/src/services/theme/app_theme.dart';
import 'package:ecommerce_demo_app/utilities/extensions/size_utilities.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomepageCarousel extends StatefulWidget {
  const HomepageCarousel({
    super.key,
  });

  @override
  State<HomepageCarousel> createState() => _HomepageCarouselState();
}

class _HomepageCarouselState extends State<HomepageCarousel> {
  int _currentPageIndex = 0;
  final _carouselImageList = [
    ImageAssets.carouselTwo,
    ImageAssets.carouselOne,
    ImageAssets.carouselThree,
    ImageAssets.carouselFour,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            pageSnapping: true,
            disableCenter: true,
            viewportFraction: 0.85,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) => setState(() {
              _currentPageIndex = index;
            }),
          ),
          items: _carouselImageList
              .map((imageLink) => CarouselItem(imageLink: imageLink))
              .toList(),
        ),
        16.height,
        HomepageCarouselPageIndicator(
          currentIndex: _currentPageIndex,
          count: _carouselImageList.length,
        ),
      ],
    );
  }
}

class HomepageCarouselPageIndicator extends StatelessWidget {
  const HomepageCarouselPageIndicator({
    super.key,
    required this.currentIndex,
    required this.count,
  });

  final int count;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSmoothIndicator(
        count: count,
        activeIndex: currentIndex,
        effect: const ExpandingDotsEffect(
          radius: 6,
          dotWidth: 8,
          dotHeight: 6,
          expansionFactor: 2.5,
          dotColor: secondaryText,
          activeDotColor: textColor,
        ),
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
    return Padding(
      padding: horizontal10,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            SizedBox.expand(
              child: Image.asset(
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
        ),
      ),
    );
  }
}
