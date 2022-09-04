import 'package:flutter/material.dart';

class BookListWithButtonWidget extends StatelessWidget {
  const BookListWithButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (index) {
          return buildItem(context);
        }),
      ),
    );
  }

  Padding buildItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          // bookcover image
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: SizedBox(
              height: 360 - 60,
              child: Image.network(
                'https://books.google.co.th/books/publisher/content?id=wMKAEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72kdWuMLbtBQvYA3MRqoek3SJlS25d6DKo3Tw17Bge6-b1wXUbC05-VLqQO408LZc3_6WtDNUGEAlTFaIPX9jOrIB3clBFUaUdcqyPqnk2YOhGBE2-lF_zXowrphWLjOmDIGBbt',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          // buy button
          OutlinedButton(
            onPressed: () {},
            child: const Text("Buy THB10.00"),
          ),
        ],
      ),
    );
  }
}
