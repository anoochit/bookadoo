import 'package:flutter/material.dart';

class TitleBarButtonWidget extends StatelessWidget {
  const TitleBarButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 14.0,
              top: 14.0,
              bottom: 14.0,
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: RotatedBox(
              quarterTurns: 90,
              child: Icon(
                Icons.arrow_back,
                size: 18,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
