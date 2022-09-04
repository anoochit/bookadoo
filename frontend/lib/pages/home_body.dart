import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:frontend/controllers/app_controller.dart';
import 'package:get/get.dart';

import '../widgets/appbar.dart';
import '../widgets/book_list.dart';
import '../widgets/books_list_button.dart';
import '../widgets/titlebar.dart';

class HomeBodyPage extends StatelessWidget {
  const HomeBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: AppController(),
        builder: (controller) {
          return ListView(
            children: [
              // appbar
              const AppBarWidget(),

              // your books
              const BookListWithButtonWidget(),

              // on your wishlist
              Flex(
                direction: Axis.vertical,
                children: [
                  TitleBarButtonWidget(
                    onTap: () {
                      log('goto wishlist');
                    },
                    title: "On your wishlist",
                  ),

                  // wishlist list
                  const BookListWithPriceWidget(),
                ],
              ),

              // top selling books
              Flex(
                direction: Axis.vertical,
                children: [
                  TitleBarButtonWidget(
                    onTap: () {
                      log('goto top selling books');
                    },
                    title: "Top selling Books",
                  ),

                  // list top selling books
                  const BookListWithPriceWidget(),
                ],
              ),

              // recently reduced ebooks
              Flex(
                direction: Axis.vertical,
                children: [
                  TitleBarButtonWidget(
                    onTap: () {
                      log('goto recently reduced ebooks');
                    },
                    title: "Recently reduced Books",
                  ),

                  // list recently reduced ebooks
                  const BookListWithPriceWidget(),
                ],
              ),

              // all newest ebooks
              Flex(
                direction: Axis.vertical,
                children: [
                  TitleBarButtonWidget(
                    onTap: () {
                      log('goto all newest ebooks');
                    },
                    title: "All newest Books",
                  ),

                  // list all newest ebooks
                  const BookListWithPriceWidget(),
                ],
              ),

              // explore store
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    log('goto store');
                    controller.navIndex.value = 3;
                    controller.update();
                  },
                  child: const Text('Explore Store'),
                ),
              ),
            ],
          );
        });
  }
}
