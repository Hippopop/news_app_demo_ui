import 'package:flutter/material.dart';
import 'package:news_app_demo/src/features/homepage/views/components/homepage_bottom_nav.dart';
import 'package:news_app_demo/src/features/homepage/views/pages/news_feed_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int pageIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      bottomNavigationBar: HomepageBottomNav(
        selectedIndex: pageIndex,
        onIndexChange: (value) => setState(() {
          pageIndex = value;
        }),
      ),
      body: const NewsFeedPage(),
    );
  }
}
