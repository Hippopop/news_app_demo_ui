import 'package:flutter/material.dart';
import 'package:news_app_demo/src/features/homepage/views/components/news_overlay_widget.dart';
import 'package:news_app_demo/src/features/homepage/views/components/pinned_news_widget.dart';

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
    const text =
        "Bangladesh's Prime Minister Sheikh Hasina has resigned and fled the country following weeks of deadly demonstrations against her government. The removal of Hasina on Monday followed weeks of deadly protests and appears to have averted the threat of further bloodshed. The focus now moves to who will control the South Asian country.";

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox.expand(
          child: PageView.builder(
            controller: _controller,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final widget = Transform(
                transform: Matrix4.identity()..rotateY(_pagePosition - index),
                child: GestureDetector(
                  onTap: _showAnimatedTransition,
                  child: const SingleNewsWidget(
                    desc: text,
                    isDailyTopper: true,
                    writer: "Mahir",
                    date: "July 09 2024",
                    time: "9:00 PM",
                    source: "Prothom Alo",
                    title:
                        "Election on November, Whole world is anticipated for this one date.",
                    image:
                        "https://images.unsplash.com/photo-1604646357333-ecb1f24b2d21?q=80&w=2333&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                ),
              );
              return widget;
            },
          ),
        ),
        const Positioned(
          left: 0,
          right: 0,
          child: PinnedNewsWidget(
            title: "Paris Olympiad 2024",
            imagePath:
                "https://images.unsplash.com/photo-1664869526116-c6c77f7eef96?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvb3RpbmclMjByYW5nZXxlbnwwfHwwfHx8MA%3D%3D",
          ),
        ),
      ],
    );
  }
}
