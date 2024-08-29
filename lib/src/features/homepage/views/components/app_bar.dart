import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/constants/paddings.dart';
import 'package:ecommerce_demo_app/src/services/theme/app_theme.dart';
import 'package:ecommerce_demo_app/utilities/extensions/size_utilities.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal20 + vertical6,
      child: SafeArea(
        top: true,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Card(
                elevation: 0,
                color: secondaryColor,
                shape: const StadiumBorder(),
                child: Padding(
                  padding: all6,
                  child: Row(
                    children: [
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14),
                          child: Center(
                            child:
                                Icon(HugeIcons.strokeRoundedSearch01, size: 20),
                          ),
                        ),
                      ),
                      12.width,
                      Expanded(
                        child: Padding(
                          padding: vertical4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Search on Electis",
                                style: context.textTheme.titleMedium,
                              ),
                              Text(
                                "Electronics . Shoes . Anything",
                                style: context.textTheme.titleSmall!.copyWith(
                                  color: secondaryText,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            8.width,
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
