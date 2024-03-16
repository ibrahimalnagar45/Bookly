import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 17,
        ),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .1,
          child: const Text(
            '2222',
            style:   TextStyle(
              fontFamily: ' GT Sectra Fine',
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .1,
          child: const Text(
            '3233',
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontFamily: ' GT Sectra Fine',
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
