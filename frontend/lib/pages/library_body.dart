import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class LibraryBodyPage extends StatelessWidget {
  const LibraryBodyPage({super.key});

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
