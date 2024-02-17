import 'package:bookly/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 100, child: BookItem(withPlayIcon: false,)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Harry potter",
              style: TextStyle(
                fontFamily: ' GT Sectra Fine',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "and the global of fire",
              style: TextStyle(
                fontFamily: ' GT Sectra Fine',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "J.K. Rowling",
              style: TextStyle(
                fontFamily: ' GT Sectra Fine',
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  '19.99\$',
                  style: TextStyle(
                    fontFamily: ' GT Sectra Fine',
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
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
            )
          ],
        )
      ],
    );
  }
}
