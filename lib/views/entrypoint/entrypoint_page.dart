import 'package:d_grocery/views/bag/bag_page.dart';
import 'package:d_grocery/views/home/home_page.dart';
import 'package:d_grocery/views/profile/profile_page.dart';
import 'package:d_grocery/views/scan/scan_page.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

import '../../core/constants/constants.dart';

class EntrypointPage extends StatefulWidget {
  const EntrypointPage({super.key});

  @override
  State<EntrypointPage> createState() => _EntrypointPageState();
}

class _EntrypointPageState extends State<EntrypointPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> pages = [
    const HomePage(),
    const ScanPage(),
    const BagPage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics:
            const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _tabController,
        children: pages,
      ),
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Home",
        labels: const ["Home", "Scan", "Bag", "Profile"],
        icons: const [
          FluentIcons.home_20_filled,
          FluentIcons.scan_object_24_filled,
          FluentIcons.shopping_bag_20_filled,
          FluentIcons.person_20_filled,
        ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
        tabIconSize: 24.0,
        tabIconSelectedSize: 24.0,
        tabSelectedColor: AppColors.primary,
        tabIconSelectedColor: Colors.white,
        tabIconColor: Colors.grey,
        tabBarColor: Theme.of(context).scaffoldBackgroundColor,
        onTabItemSelected: (int value) {
          setState(() {
            _tabController.index = value;
          });
        },
      ),
    );
  }
}
