import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_custom_carousel/flutter_custom_carousel.dart';
import 'package:news_app_demo/src/constants/assets/app_assets.dart';
import 'package:news_app_demo/src/constants/components/border_radius.dart';
import 'package:news_app_demo/src/constants/components/paddings.dart';
import 'package:news_app_demo/src/services/theme/app_theme.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.color.theme,
      child: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(AppImages.appLogo),
                    ),
                    const Expanded(
                      flex: 3,
                      child: Material(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              DrawerNavTile(
                                name: "Trending",
                                icon: Icons.trending_up_rounded,
                              ),
                              DrawerNavTile(
                                icon: Icons.star,
                                name: "Top 10 Today",
                              ),
                              DrawerNavTile(
                                name: "Archived News",
                                icon: Icons.bookmark,
                              ),
                              DrawerNavTile(
                                name: "Highlighted News",
                                icon: Icons.highlight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: horizontal12,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Categories",
                            style: context.textTheme.titleMedium?.copyWith(
                              color: context.color.secondaryText,
                            ),
                          ),
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextButton.icon(
                            onPressed: () {},
                            label: const Text("View all"),
                            icon: const Icon(
                              size: 18,
                              Icons.arrow_back_ios_new_rounded,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: AnimatedCategorySection(
                      width: MediaQuery.sizeOf(context).width,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AnimatedCategorySection extends StatefulWidget {
  const AnimatedCategorySection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<AnimatedCategorySection> createState() =>
      _AnimatedCategorySectionState();
}

class _AnimatedCategorySectionState extends State<AnimatedCategorySection> {
  late final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categoryOptionList = [
      "All",
      "Trending",
      "Reels",
      "Business",
      "Insight",
      "Albums",
      "Fashion",
      "Sports",
      "Politics"
    ];
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: ClipRRect(
            child: CustomCarousel(
              tapToSelect: true,
              itemCountAfter: 2,
              itemCountBefore: 2,
              alignment: Alignment.center,
              scrollDirection: Axis.horizontal,
              onSelectedItemChanged: (value) {
                controller.animateToPage(
                  value,
                  curve: Curves.linear,
                  duration: Durations.medium1,
                );
              },
              effectsBuilder: (index, scrollRatio, child) {
                double scale(double x) {
                  if (x < -0.3 || x > 0.3) {
                    return 0.0;
                  } else if (-0.3 <= x && x <= 0) {
                    return (x + 0.3) / 0.3;
                  } else if (0 < x && x <= 0.3) {
                    return 1 - (x / 0.3);
                  }
                  return 0.0;
                }

                final catalyst = scale(scrollRatio);
                return Transform.scale(
                  scale: 1 - (0.3 * (1 - catalyst)),
                  child: Transform.translate(
                    offset: Offset(scrollRatio * 130 * 3, 0),
                    child: ImageFiltered(
                      enabled: catalyst == 1,
                      imageFilter: ImageFilter.blur(
                        sigmaX: catalyst,
                        sigmaY: catalyst,
                      ),
                      child: Opacity(
                        opacity: (catalyst + 0.55).clamp(0, 1),
                        child: child,
                      ),
                    ),
                  ),
                );
              },
              children: List.generate(
                categoryOptionList.length,
                (index) => const CategoryImageItemShimmer(
                    // name: categoryOptionList[index],
                    // imagePath:
                    //     "https://images.unsplash.com/photo-1698594691245-404a02bb00a3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aW50ZXJuYXRpb25hbHxlbnwwfDF8MHx8fDI%3D",
                    ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: PageView.builder(
            controller: controller,
            itemCount: categoryOptionList.length,
            itemBuilder: (context, index) => ListView.separated(
              itemCount: 40,
              padding: emptyPadding,
              separatorBuilder: (context, index) => Divider(
                color: context.color.secondaryText,
              ),
              itemBuilder: (context, index) => const SingleNewsListTileShimmer(
                  // title:
                  //     "কোটা সংস্কারের দাবিতে বঙ্গভবনে স্মারকলিপি দিলেন শিক্ষার্থীরা",
                  // image:
                  //     "https://images.unsplash.com/photo-1698594691245-404a02bb00a3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aW50ZXJuYXRpb25hbHxlbnwwfDF8MHx8fDI%3D",
                  ),
            ),
          ),
        ),
      ],
    );
  }
}

class SingleNewsListTile extends StatelessWidget {
  const SingleNewsListTile({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 48,
      horizontalTitleGap: 10,
      contentPadding: horizontal24,
      titleTextStyle: context.textTheme.titleMedium,
      leading: ClipRRect(
        borderRadius: br8,
        child: ColoredBox(
          color: Colors.green,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: image,
            ),
          ),
        ),
      ),
      title: Text(title),
    );
  }
}

class SingleNewsListTileShimmer extends StatelessWidget {
  const SingleNewsListTileShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 48,
      horizontalTitleGap: 10,
      contentPadding: horizontal24,
      titleTextStyle: context.textTheme.titleMedium,
      leading: ClipRRect(
        borderRadius: br8,
        child: ColoredBox(
          color: context.color.secondaryText,
          child: const AspectRatio(
            aspectRatio: 16 / 9,
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColoredBox(
            color: context.color.secondaryText,
            child: SizedBox(
              height: 16,
              width: (MediaQuery.sizeOf(context).width - 24) * 0.6,
            ),
          ),
          const SizedBox(height: 3),
          ColoredBox(
            color: context.color.secondaryText,
            child: SizedBox(
              height: 16,
              width: (MediaQuery.sizeOf(context).width - 24) * 0.3,
            ),
          ),
        ],
      ),
    )
        .animate(
          onPlay: (controller) => controller.repeat(),
        )
        .shimmer(
          delay: 500.milliseconds,
          duration: 1.seconds,
        );
  }
}

class CategoryImageItem extends StatelessWidget {
  const CategoryImageItem({
    super.key,
    required this.name,
    required this.imagePath,
  });

  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal6,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: br6,
            child: SizedBox.square(
              dimension: 96,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: imagePath,
              ),
            ),
          ),
          const SizedBox(height: 3),
          Text(
            name,
            style: context.textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}

class CategoryImageItemShimmer extends StatelessWidget {
  const CategoryImageItemShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal6,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: br6,
            child: ColoredBox(
              color: context.color.secondaryText,
              child: const SizedBox.square(
                dimension: 96,
              ),
            ),
          ),
          const SizedBox(height: 3),
          ColoredBox(
            color: context.color.secondaryText,
            child: const SizedBox(height: 12, width: 80),
          ),
        ],
      ),
    )
        .animate(
          onPlay: (controller) => controller.repeat(),
        )
        .shimmer(
          delay: 500.milliseconds,
          duration: 1.seconds,
        );
  }
}

class DrawerNavTile extends StatelessWidget {
  const DrawerNavTile({
    super.key,
    required this.name,
    required this.icon,
  });

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 0,
      contentPadding: horizontal24,
      tileColor: context.color.theme,
      style: ListTileStyle.drawer,
      title: Text(name),
      leading: Icon(
        icon,
        color: context.color.opposite,
      ),
    );
  }
}
