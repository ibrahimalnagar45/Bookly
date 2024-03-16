import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'book_item.dart';

class BooksHorizontalListView extends StatelessWidget {
  const BooksHorizontalListView({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return  Padding(
          padding:const EdgeInsets.symmetric(horizontal: 8.0),
          child: BookItem(
         book: books[index],
          ),
        );
      },
    );
  }
}
