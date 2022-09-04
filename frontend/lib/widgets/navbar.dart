import 'package:flutter/material.dart';
import 'package:frontend/controllers/app_controller.dart';
import 'package:get/get.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
        init: AppController(),
        builder: (controller) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            currentIndex: controller.navIndex.value,
            onTap: (value) {
              controller.navIndex.value = value;
              controller.update();
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined),
                activeIcon: Icon(Icons.library_books),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add_outlined),
                activeIcon: Icon(Icons.bookmark_add),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                activeIcon: Icon(Icons.shopping_bag),
                label: 'Shop',
              ),
            ],
          );
        });
  }
}
