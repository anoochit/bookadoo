import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class WishlistBodyPage extends StatelessWidget {
  const WishlistBodyPage({super.key});

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
