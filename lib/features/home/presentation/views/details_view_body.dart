import 'package:bookly/core/utils/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manager/relevance_cubit/relevance_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view_widget/book_info.dart';
import 'view_widget/books_horzintail_list_view.dart';
import 'view_widget/book_action.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                    aspectRatio: 4 / 6,
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                      errorWidget: (context, url, error) => const Center(
                        child: Icon(Icons.error_outline),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: BookInfo(
              book: book,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: BooksActions(
              book: book,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'You may also like',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
              child: BlocBuilder<RelevanceCubitCubit, RelevanceCubitState>(
                builder: (context, state) {
                  if (state is RelevanceCubitSucess) {
                    return Expanded(
                      child: BooksHorizontalListView(
                        books: state.books,
                      ),
                    );
                  } else if (state is RelevanceCubitFailure) {
                    return Center(
                      child: Text(state.errMessage),
                    );
                  } else {
                    return const CustomLoadingWidget();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
