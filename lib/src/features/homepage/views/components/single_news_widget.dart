// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:news_app_demo/src/constants/assets/app_assets.dart';
import 'package:news_app_demo/src/constants/components/border_radius.dart';
import 'package:news_app_demo/src/constants/components/paddings.dart';
import 'package:news_app_demo/src/services/theme/app_theme.dart';

class SingleNewsWidget extends StatelessWidget {
  const SingleNewsWidget({
    super.key,
    required this.time,
    required this.date,
    required this.desc,
    required this.title,
    required this.image,
    required this.source,
    required this.writer,
    required this.isDailyTopper,
  });

  final String time;
  final String date;
  final String desc;
  final String title;
  final String image;
  final String source;
  final String writer;
  final bool isDailyTopper;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    SizedBox.expand(
                      child: CachedNetworkImage(
                        imageUrl: image,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => Image.asset(
                          AppImages.emptyImage,
                        ),
                      ),
                    ),
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: AlignmentDirectional.bottomCenter,
                          stops: [0.2, 1],
                          colors: [
                            Colors.transparent,
                            Colors.black54,
                          ],
                        ),
                      ),
                      child: SizedBox.expand(),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 45,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: all12 + const EdgeInsets.only(bottom: 12),
                    child: Text(
                      title,
                      style: context.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 55,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: context.color.theme,
                        borderRadius: const BorderRadiusDirectional.only(
                          topStart: Radius.circular(12),
                          topEnd: Radius.circular(12),
                        ),
                      ),
                      child: SizedBox.expand(
                        child: Padding(
                          padding: all12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(height: 4),
                              RichText(
                                text: TextSpan(
                                  text: "Posted by ",
                                  style: context.textTheme.bodySmall?.copyWith(
                                    color: context.color.secondaryText,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: writer,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(text: " at $date; $time"),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Flexible(
                                child: Text(
                                  desc,
                                  maxLines: 10,
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.bodyLarge,
                                ),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "Source: $source, $date.",
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: context.color.secondaryText,
                                ),
                              ),
                              SizedBox(height: 80),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (isDailyTopper)
                      Positioned(
                        top: -16,
                        right: 12,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: br8,
                            color: Colors.white,
                            border: Border.all(
                              color: context.color.background,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Daily Topper",
                              style: context.textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SingleNewsShimmer extends StatelessWidget {
  const SingleNewsShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    SizedBox.expand(
                      child: Image.asset(AppImages.emptyImage),
                    ),
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: AlignmentDirectional.bottomCenter,
                          stops: [0.2, 1],
                          colors: [
                            Colors.transparent,
                            Colors.black54,
                          ],
                        ),
                      ),
                      child: SizedBox.expand(),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 45,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: all12 + const EdgeInsets.only(bottom: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _SkeletonGreyBox(
                          height: 24,
                          width: (constraints.maxWidth),
                        ),
                        const SizedBox(height: 3),
                        _SkeletonGreyBox(
                          height: 24,
                          width: (constraints.maxWidth),
                        ),
                        const SizedBox(height: 3),
                        _SkeletonGreyBox(
                          height: 24,
                          width: (constraints.maxWidth - 24) * 0.3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 55,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: context.color.theme,
                        borderRadius: const BorderRadiusDirectional.only(
                          topStart: Radius.circular(12),
                          topEnd: Radius.circular(12),
                        ),
                      ),
                      child: SizedBox.expand(
                        child: Padding(
                          padding: all12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 4),
                              _SkeletonGreyBox(
                                height: 12,
                                width: (constraints.maxWidth - 24) * 0.6,
                              ),
                              const SizedBox(height: 16),
                              Flexible(
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        for (int i = 0; i < 6; i++) ...[
                                          _SkeletonGreyBox(
                                            height: 20,
                                            width: (constraints.maxWidth),
                                          ),
                                          const SizedBox(height: 8)
                                        ],
                                        _SkeletonGreyBox(
                                          height: 20,
                                          width:
                                              (constraints.maxWidth - 24) * 0.6,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              _SkeletonGreyBox(
                                height: 12,
                                width: (constraints.maxWidth - 24) * 0.3,
                              ),
                              const SizedBox(height: 80),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -16,
                      right: 12,
                      child: ClipRRect(
                        borderRadius: br8,
                        child: _SkeletonGreyBox(width: 100, height: 32),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _SkeletonGreyBox extends StatelessWidget {
  const _SkeletonGreyBox({required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color.fromARGB(255, 194, 192, 192),
      child: SizedBox(
        width: width,
        height: height,
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
