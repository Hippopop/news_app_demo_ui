import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:news_app_demo/src/constants/components/border_radius.dart';
import 'package:news_app_demo/src/constants/components/paddings.dart';
import 'package:news_app_demo/src/services/theme/app_theme.dart';

class PinnedNewsWidget extends StatelessWidget {
  const PinnedNewsWidget({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: all8,
      child: ClipRRect(
        borderRadius: br12,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.color.background,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(imagePath),
            ),
          ),
          child: ColoredBox(
            color: context.color.opposite.withOpacity(0.5),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: all12 + vertical4,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Paris Olympiad 2024",
                            style: context.textTheme.titleLarge,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            "Related News",
                            style: context.textTheme.bodySmall?.copyWith(
                              color: context.color.theme,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      shape: const CircleBorder(),
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () {},
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: context.color.theme.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: all12,
                            child: Icon(
                              size: 18,
                              color: context.color.theme,
                              Icons.arrow_forward_ios_rounded,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PinnedNewsShimmer extends StatelessWidget {
  const PinnedNewsShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: all8,
      child: ClipRRect(
        borderRadius: br12,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.color.background,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: all12 + vertical4,
              child: Row(
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColoredBox(
                            color: Colors.grey,
                            child: SizedBox(
                              height: 28,
                              width: constraints.maxWidth * 0.7,
                            ),
                          ),
                          const SizedBox(height: 2),
                          ColoredBox(
                            color: Colors.grey,
                            child: SizedBox(
                              height: 12,
                              width: constraints.maxWidth * 0.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: context.color.theme.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: all12,
                      child: Icon(
                        size: 18,
                        color: context.color.theme,
                        Icons.arrow_forward_ios_rounded,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
          .animate(
            onPlay: (controller) => controller.repeat(),
          )
          .shimmer(
            delay: 500.milliseconds,
            duration: 1.seconds,
          ),
    );
  }
}
