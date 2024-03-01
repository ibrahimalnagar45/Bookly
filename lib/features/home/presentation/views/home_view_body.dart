import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'view_widget/book_card_list_view.dart';
import 'view_widget/books_horzintail_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16, top: 17),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              child: const BooksHorizontalListView(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 13.0, top: 5),
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
          const SliverFillRemaining(
            child: BookCardListView(),
          )
        ],
      ),

      //     ListView(
      //   children: const [
      //     SizedBox(
      //       height: 200,
      //       child: BooksHorizontalListView(),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.only(bottom: 13.0, top: 13),
      //       child: Text(
      //         'Best Seller',
      //         style: TextStyle(
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //     SliverFillRemaining(
      //       child: BookCardListView())
      //   ],
      // ),
    );
  }
}
