import 'package:ecommerce_demo_app/src/constants/assets.dart';
import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/constants/paddings.dart';
import 'package:ecommerce_demo_app/src/features/product_list_page/views/product_list_page.dart';
import 'package:ecommerce_demo_app/src/services/theme/app_theme.dart';
import 'package:ecommerce_demo_app/utilities/extensions/size_utilities.dart';
import 'package:flutter/material.dart';

class ElasticChoiceTitle extends StatelessWidget {
  const ElasticChoiceTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: all12,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Electis Choice",
              style: context.textTheme.titleLarge,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  transitionDuration: Durations.medium1,
                  pageBuilder: (context, animation, _) =>
                      const ProductListPage(),
                  transitionsBuilder: (context, animation, _, child) =>
                      FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: animation.drive(
                        Tween(
                          begin: const Offset(0.9, 0),
                          end: Offset.zero,
                        ),
                      ),
                      child: child,
                    ),
                  ),
                ),
              );
            },
            customBorder: const StadiumBorder(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Show all",
                style: context.textTheme.bodyLarge?.copyWith(
                  color: secondaryText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChoiceProductArea extends StatelessWidget {
  const ChoiceProductArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        padding: horizontal12,
        scrollDirection: Axis.horizontal,
        children: [
          PngAssets.productZero,
          PngAssets.productFour,
          PngAssets.productThree,
          PngAssets.productTwo,
          PngAssets.productOne,
        ]
            .map(
              (imageLink) => SingleChoiceProductWidget(
                imageLink: imageLink,
                isNew: imageLink.length.isOdd,
              ),
            )
            .toList(),
      ),
    );
  }
}

class SingleChoiceProductWidget extends StatelessWidget {
  const SingleChoiceProductWidget({
    super.key,
    required this.isNew,
    required this.imageLink,
  });

  final bool isNew;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal8,
      child: InkWell(
        onTap: () {},
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        child: SizedBox(
          height: 250,
          width: MediaQuery.sizeOf(context).width / 2.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.square(
                dimension: MediaQuery.sizeOf(context).width / 2.5,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      SizedBox.expand(
                        child: ColoredBox(
                          color: secondaryBackground,
                          child: Padding(
                            padding: all20,
                            child: Image.asset(imageLink),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        top: 5,
                        child: Card(
                          elevation: 0,
                          shape: const StadiumBorder(),
                          color: ratingBg,
                          child: Padding(
                            padding: horizontal6 + vertical4,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  size: 14,
                                  color: Colors.amber.shade700,
                                ),
                                Text(
                                  "4.9",
                                  style: context.textTheme.bodySmall?.copyWith(
                                    fontSize: 10,
                                    color: backgroundColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (isNew)
                        Positioned(
                          left: 5,
                          top: 5,
                          child: Card(
                            elevation: 0,
                            shape: const StadiumBorder(),
                            color: newBg,
                            child: Padding(
                              padding: horizontal8 + vertical4,
                              child: Text(
                                "NEW",
                                style: context.textTheme.bodySmall?.copyWith(
                                  fontSize: 10,
                                  color: backgroundColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              8.height,
              Text(
                "Sony Alpha 9 Mark III Body Only",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w100,
                ),
              ),
              8.height,
              Text(
                "RP 24.500.000",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
