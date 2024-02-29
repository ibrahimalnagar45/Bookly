import 'package:flutter/material.dart';

import 'book_item.dart';

class BooksHorizontalListView extends StatelessWidget {
  const BooksHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BookItem(
          withPlayIcon: false,
        );
      },
    );
  }
}
