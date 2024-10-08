import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app_demo/src/constants/utils/date_formats/date_formats.dart';
import 'package:news_app_demo/src/features/homepage/views/components/news_overlay_widget.dart';
import 'package:news_app_demo/src/features/homepage/views/components/pinned_news_widget.dart';
import 'package:news_app_demo/src/providers/news_data_provider/news_data_provider.dart';

import '../components/single_news_widget.dart';

class NewsFeedPage extends StatefulWidget {
  const NewsFeedPage({
    super.key,
  });

  @override
  State<NewsFeedPage> createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> {
  double _pagePosition = 0;
  late final _controller = PageController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.hasClients) {
        setState(() {
          _pagePosition = _controller.page ?? 0;
        });
      }
    });
  }

  _showAnimatedTransition() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.transparent,
      transitionDuration: Durations.medium1,
      barrierLabel: "#HeaderAnimatedDialogue",
      pageBuilder: (context, animation, secondaryAnimation) {
        return Material(
          type: MaterialType.transparency,
          child: AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return NewsOverlayWidget(animation: animation);
              }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox.expand(
          child: Consumer(
            builder: (context, ref, child) {
              final dataProvider = ref.watch(newsDataProvider);
              return dataProvider.when(
                data: (data) {
                  return PageView.builder(
                    itemCount: data.length,
                    controller: _controller,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final news = data[index];
                      final widget = Transform(
                        transform: Matrix4.identity()
                          ..rotateY(_pagePosition - index),
                        child: GestureDetector(
                          onTap: _showAnimatedTransition,
                          child: SingleNewsWidget(
                            desc: news.description,
                            title: news.title,
                            image: news.imageLink,
                            source: news.sourceName,
                            writer: news.writerName,
                            isDailyTopper: news.isDailyTopper,
                            time: hourMin.format(news.publishedAt),
                            date: monthDY.format(news.publishedAt),
                          ),
                        ),
                      );
                      return widget;
                    },
                  );
                },
                loading: () => const SingleNewsShimmer(),
                error: (error, stackTrace) => const SingleNewsShimmer(),
              );
            },
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: Consumer(builder: (context, ref, child) {
            final pinnedNews = ref.watch(pinnedNewsProvider);
            return pinnedNews.when(
              data: (data) => PinnedNewsWidget(
                title: data[0].title,
                imagePath: data[0].imageLink,
              ),
              loading: () => const PinnedNewsShimmer(),
              error: (error, stackTrace) => const PinnedNewsShimmer(),
            );
          }),
        ),
      ],
    );
  }
}
