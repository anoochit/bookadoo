import 'package:flutter/material.dart';

class BookListWithPriceWidget extends StatelessWidget {
  const BookListWithPriceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (index) {
          return buildItem(context);
        }),
      ),
    );
  }

  Widget buildItem(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0),
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // bookcover image
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              'https://books.google.co.th/books/publisher/content?id=wMKAEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE72kdWuMLbtBQvYA3MRqoek3SJlS25d6DKo3Tw17Bge6-b1wXUbC05-VLqQO408LZc3_6WtDNUGEAlTFaIPX9jOrIB3clBFUaUdcqyPqnk2YOhGBE2-lF_zXowrphWLjOmDIGBbt',
              fit: BoxFit.fitHeight,
            ),
          ),

          // book title
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "สูตรลัด Flutter เขียน Flutter ง่ายๆ จากโค้ดตัวอย่าง",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),

          // price
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "THB 10.00",
              maxLines: 1,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
