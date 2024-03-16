import 'package:bookly/features/home/presentation/views/view_widget/book_card.dart';
import 'package:flutter/material.dart';
import '../../../data/models/book_model/book_model.dart';

class BookCardListView extends StatelessWidget {
  const BookCardListView({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: books.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: BookCard(
          book: books[index],
        ),
      ),
    );
  }
}
