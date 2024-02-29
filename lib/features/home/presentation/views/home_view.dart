import 'package:bookly/features/home/presentation/views/view_widget/book_card_list_view.dart';
import 'package:bookly/features/home/presentation/views/view_widget/books_horzintail_list_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'Home View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/Logo.png',
              height: 18,
              color: Colors.white,
            ),
            const Icon(
              Icons.search,
              size: 25,
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: BooksHorizontalListView(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 13.0, top: 13),
                child: Text(
                  'Best Seller',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: BookCardListView(),
            )
          ],
        ),
      ),
    );
  }
}
