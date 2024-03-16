import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newesr_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_card_list_view.dart';
import 'books_horzintail_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollBehavior: const ScrollBehavior(),
      slivers: [
        SliverToBoxAdapter(
          child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
            builder: (context, state) {
              if (state is NewestBooksSucess) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    child: BooksHorizontalListView(
                      books: state.books,
                    ),
                  ),
                );
              } else if (state is NewestBooksFailure) {
                return Center(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * .4,
                      child: Center(child: Text(state.errMessage))),
                );
              } else {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            },
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20, top: 20, left: 30),
            child: Text(
              'Find Your Interests',
              style: Styles.meduimTitle,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: BlocBuilder<AllBooksCubit, AllBooksState>(
            builder: (context, state) {
              if (state is AllBookssucess) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: BookCardListView(
                    books: state.books,
                  ),
                );
              } else if (state is AllBooksFailure) {
                return Center(
                  child: Text(state.errMessage),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        )
      ],
    );
  }
}
