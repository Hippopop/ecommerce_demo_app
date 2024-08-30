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
  _showAnimatedTransition() {
    print("Showing dialogue!");
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "#HeaderAnimatedDialogue",
      transitionDuration: Durations.medium1,
      barrierColor: extraBackground.withOpacity(0.7),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Material(
          type: MaterialType.transparency,
          child: AlignTransition(
            alignment: AlignmentTween(
              begin: const Alignment(-1, -3),
              end: const Alignment(-1, -1),
            ).animate(animation),
            child: const DropAnimationWidget(),
          ),
        );
      },
    );
  }

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
              onPressed: _showAnimatedTransition,
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

class DropAnimationWidget extends StatelessWidget {
  const DropAnimationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: context.theme.textTheme.bodyMedium!,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        child: SafeArea(
          top: true,
          bottom: false,
          child: Padding(
            padding: horizontal20 + vertical20,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: secondaryBackground,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: horizontal16 + vertical12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "BALANCE",
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: Colors.white24,
                                ),
                              ),
                              8.height,
                              Text(
                                "RP 2.500.000",
                                style: context.textTheme.bodyLarge?.copyWith(
                                  color: textColor,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    12.width,
                    Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: secondaryBackground,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: horizontal16 + vertical12,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      "MEMBER",
                                      style:
                                          context.textTheme.bodySmall?.copyWith(
                                        color: Colors.white24,
                                      ),
                                    ),
                                    8.height,
                                    Text(
                                      "Platinum",
                                      style:
                                          context.textTheme.bodyLarge?.copyWith(
                                        color: textColor,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                HugeIcons.strokeRoundedChampion,
                                size: 20,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    12.width,
                    const CloseButton(),
                  ],
                ),
                16.height,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Delivery Locations",
                        style: context.textTheme.titleMedium,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      customBorder: const StadiumBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Manage",
                          style: context.textTheme.bodyMedium
                              ?.copyWith(color: secondaryText),
                        ),
                      ),
                    ),
                  ],
                ),
                16.height,
                const DecoratedBox(
                  decoration: BoxDecoration(
                    color: secondaryBackground,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        AddressOptionWidget(
                          title: "Home",
                          address: "Kotwali Street, Block A, Building B",
                          isSelected: false,
                        ),
                        AddressOptionWidget(
                          title: "Office",
                          address: "Kotwali Street, Block A, Building B",
                          isSelected: true,
                        ),
                        AddressOptionWidget(
                          title: "Village",
                          address: "Kotwali Street, Block A, Building B",
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                ),
                12.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddressOptionWidget extends StatelessWidget {
  const AddressOptionWidget({
    super.key,
    required this.title,
    required this.address,
    required this.isSelected,
  });
  final String title;
  final String address;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: emptyPadding,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSelected ? accentColor : null,
          borderRadius: const BorderRadius.all(Radius.circular(14)),
        ),
        child: Padding(
          padding: all12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: context.textTheme.titleMedium?.copyWith(
                  color: isSelected ? Colors.black : textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              8.height,
              Text(
                address,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: secondaryText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
