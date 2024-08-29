import 'package:ecommerce_demo_app/src/constants/colors.dart';
import 'package:ecommerce_demo_app/src/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          backgroundColor: extraBackground,
          icon: Padding(
            padding: vertical4,
            child: Icon(
              HugeIcons.strokeRoundedHome01,
            ),
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: vertical4,
            child: Icon(
              HugeIcons.strokeRoundedIdea,
            ),
          ),
          label: "Feeds",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: vertical4,
            child: Icon(
              HugeIcons.strokeRoundedFavourite,
            ),
          ),
          label: "Likes",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: vertical4,
            child: Icon(
              HugeIcons.strokeRoundedShoppingBag02,
            ),
          ),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: vertical4,
            child: Icon(
              HugeIcons.strokeRoundedUser,
            ),
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
