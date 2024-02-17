import 'package:bookly/widgets/books_horzintail_list_view.dart';
import 'package:bookly/widgets/custom_book_review.dart';
import 'package:bookly/widgets/custom_price_cotnainer.dart';
import 'package:flutter/material.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff100e23),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icons/exit icon.png',
                  height: 12,
                  color: Colors.white,
                ),
                const Icon(Icons.shopping_cart_outlined)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 300,
              child: Center(child: CustomBookReview()),
            ),
            const Center(
              child: Text(
                'The Jungle Book',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Rudyard kipling ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   '19.99\$',
                //   style: TextStyle(
                //     fontFamily: ' GT Sectra Fine',
                //     color: Colors.white,
                //     fontSize: 25,
                //     fontWeight: FontWeight.w900,
                //   ),
                // ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 17,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '4.8',
                  style: TextStyle(
                    fontFamily: ' GT Sectra Fine',
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  '(23449)',
                  style: TextStyle(
                    fontFamily: ' GT Sectra Fine',
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomPriceContainer(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'You may also like',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(child: BooksHorizontalListView()),
          ],
        ),
      ),
    );
  }
}
