import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:ice_cream_mobile/ui/screens/estoque_screen.dart';
import 'package:ice_cream_mobile/ui/screens/home_screen.dart';
import 'package:ice_cream_mobile/ui/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _index = 0;
  final PageController controller = PageController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarBubble(
        selectedIndex: _index,
        items: [
          BottomBarItem(
            iconSize: 36,
            iconData: Icons.home_outlined,
            label: 'Home',
          ),
          BottomBarItem(
            iconSize: 36,
            iconData: Icons.menu_open_rounded,
            label: 'Menu',
          ),
          BottomBarItem(
            iconSize: 36,
            iconData: Icons.network_wifi_outlined,
            label: 'Inventory',
          ),
          BottomBarItem(
            iconSize: 36,
            iconData: Icons.person_rounded,
            label: 'Profile',
          ),
        ],
        onSelect: (index) {
          controller.jumpToPage(index);
        },
      ),
      body: PageView(
        controller: controller,
        children: const <Widget>[
          HomeScreen(),
          Center(
            child: Text('Second Page'),
          ),
          InventoryScreen(),
          Center(
            child: Text('Four Page'),
          ),
          Center(
            child: Text('Five Page'),
          ),
        ],
      ),
    );
  }
}
