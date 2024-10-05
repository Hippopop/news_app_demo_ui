import 'package:flutter/material.dart';
import 'package:news_app_demo/src/constants/assets/app_assets.dart';
import 'package:news_app_demo/src/services/theme/app_theme.dart';

class HomepageBottomNav extends StatelessWidget {
  const HomepageBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onIndexChange,
  });

  final int selectedIndex;
  final ValueChanged<int> onIndexChange;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: onIndexChange,
      items: [
        const BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home_rounded,
          ),
        ),
        const BottomNavigationBarItem(
          label: "Notes",
          icon: Icon(
            Icons.topic_outlined,
          ),
        ),
        const BottomNavigationBarItem(
          label: "Notifications",
          icon: Icon(
            Icons.notifications_rounded,
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Padding(
            padding: const EdgeInsets.all(2.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.color.accent.withOpacity(0.5),
              ),
              child: const CircleAvatar(
                radius: 14,
                foregroundImage: AssetImage(
                  AppImages.profileImage,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
