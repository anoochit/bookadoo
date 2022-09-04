import 'dart:developer';

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: (brightness == Brightness.dark) ? Colors.grey.shade900 : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: (brightness == Brightness.dark) ? Colors.black87 : Colors.grey.shade200,
              blurRadius: 3.0,
            )
          ],
        ),
        child: GestureDetector(
          onTap: () {
            // navigate to search page
            log('goto search page');
          },
          child: TextFormField(
            enabled: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: 'Search books',
            ),
          ),
        ),
      ),
    );
  }
}
