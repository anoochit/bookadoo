import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import '../controllers/app_controller.dart';
import '../widgets/navbar.dart';
import 'home_body.dart';
import 'library_body.dart';
import 'shop_body.dart';
import 'wishlist_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        systemNavigationBarColor: Colors.transparent, // navigation bar color
        statusBarIconBrightness:
            (brightness == Brightness.dark) ? Brightness.light : Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            (brightness == Brightness.dark) ? Brightness.dark : Brightness.light, //navigation bar icons' color
      ),
      child: GetBuilder<AppController>(
        init: AppController(),
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  // body
                  IndexedStack(
                    index: controller.navIndex.value,
                    children: const [
                      HomeBodyPage(),
                      LibraryBodyPage(),
                      WishlistBodyPage(),
                      ShopBodyPage(),
                    ],
                  ),
                ],
              ),
            ),
            bottomNavigationBar: const BottomNavBarWidget(),
          );
        },
      ),
    );
  }
}
