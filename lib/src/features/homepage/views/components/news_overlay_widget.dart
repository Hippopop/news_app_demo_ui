import 'package:flutter/material.dart';
import 'package:news_app_demo/src/constants/components/border_radius.dart';
import 'package:news_app_demo/src/constants/components/paddings.dart';
import 'package:news_app_demo/src/services/theme/app_theme.dart';

class NewsOverlayWidget extends StatefulWidget {
  const NewsOverlayWidget({
    super.key,
    required this.animation,
  });

  final Animation<double> animation;

  @override
  State<NewsOverlayWidget> createState() => _NewsOverlayWidgetState();
}

class _NewsOverlayWidgetState extends State<NewsOverlayWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    const travelDistance = 150;
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
    return SafeArea(
      bottom: true,
      top: false,
      child: Stack(
        children: [
          const SizedBox.expand(),
          Positioned(
            top: (1 - widget.animation.value) * -travelDistance,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: widget.animation.value,
              child: Material(
                color: context.color.theme,
                child: SafeArea(
                  child: Padding(
                    padding: vertical12,
                    child: SizedBox(
                      height: 32,
                      child: ListView.builder(
                        itemCount: categoryOptionList.length,
                        padding: horizontal12,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            customBorder: const StadiumBorder(),
                            child: SingleCategoryItem(
                              name: categoryOptionList[index],
                              isSelected: index == selectedIndex,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: ((1 - widget.animation.value) * -travelDistance) + 56,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: widget.animation.value,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: const [0.8, 1.0],
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    colors: [
                      context.color.theme,
                      context.color.theme.withOpacity(0.1),
                    ],
                  ),
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 48),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SingleOverlayButton(
                          text: "Archive",
                          icon: Icons.bookmark_border_outlined,
                        ),
                        SingleOverlayButton(
                          text: "Highlight",
                          icon: Icons.highlight_outlined,
                        ),
                        SingleOverlayButton(
                          text: "Share",
                          icon: Icons.share,
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SingleOverlayButton extends StatelessWidget {
  const SingleOverlayButton({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: all6,
      child: Column(
        children: [
          Material(
            child: InkWell(
              onTap: () {},
              borderRadius: br12,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: br12,
                  border: Border.all(
                    width: 1.5,
                    color: context.color.secondaryText,
                  ),
                ),
                child: SizedBox.square(
                  child: Padding(
                    padding: all12,
                    child: Icon(
                      size: 28,
                      icon,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: context.textTheme.bodySmall?.copyWith(
              color: context.color.secondaryText,
            ),
          ),
        ],
      ),
    );
  }
}

class SingleCategoryItem extends StatelessWidget {
  const SingleCategoryItem({
    super.key,
    required this.name,
    required this.isSelected,
  });

  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: horizontal4,
        elevation: isSelected ? null : 0,
        color: isSelected ? context.color.opposite : context.color.theme,
        shape: StadiumBorder(
          side: BorderSide(
            color:
                isSelected ? context.color.theme : context.color.secondaryText,
          ),
        ),
        child: Padding(
          padding: vertical6 + horizontal16,
          child: Text(
            name,
            style: context.textTheme.titleMedium?.copyWith(
              color: !isSelected ? context.color.opposite : context.color.theme,
            ),
          ),
        ),
      ),
    );
  }
}
