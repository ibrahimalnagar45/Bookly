import 'package:bookly/widgets/book_card_list_view.dart';
import 'package:bookly/widgets/book_item.dart';
import 'package:bookly/widgets/books_horzintail_list_view.dart';
import 'package:bookly/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 200,
            child: BooksHorizontalListView(),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height - 280,
              child: const BookCardListView())
        ],
      ),
    );
  }
}
