import 'package:bookly/widgets/book_card_list_view.dart';
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
      body: const Padding(
        padding:   EdgeInsets.symmetric(horizontal: 8.0),
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
                padding: EdgeInsets.only(bottom: 10.0),
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
