import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/view_widget/book_info.dart';
import 'package:bookly/features/home/presentation/views/view_widget/books_horzintail_list_view.dart';
import 'package:bookly/features/details/presentation/views/view_widget/custom_price_cotnainer.dart';
import 'package:flutter/material.dart';

class DetialsView extends StatelessWidget {
  const DetialsView({super.key, required this.book});
  static String id = 'Review View';
  final String book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              child: Center(
                child: Image.asset('assets/images/test_image.png'),
              ),
            ),
            const BookInfo(),
            const SizedBox(
              height: 20,
            ),
            const CustomPriceContainer(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'You may also like',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Expanded(
              child: BooksHorizontalListView(),
            ),
          ],
        ),
      ),
    );
  }
}
