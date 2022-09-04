import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class ShopBodyPage extends StatelessWidget {
  const ShopBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        // appbar
        AppBarWidget(),
      ],
    );
  }
}
