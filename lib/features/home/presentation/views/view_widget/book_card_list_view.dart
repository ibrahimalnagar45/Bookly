import 'package:bookly/features/home/presentation/views/view_widget/book_card.dart';
import 'package:flutter/material.dart';

class BookCardListView extends StatelessWidget {
  const BookCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) => const BookCard(),
    );
  }
}
