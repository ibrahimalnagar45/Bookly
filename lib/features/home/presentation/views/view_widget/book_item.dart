import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/check_image_validation.dart';
import '../../manager/relevance_cubit/relevance_cubit.dart';
import '../details_view.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<RelevanceCubitCubit>(context)
            .fetchRelevanceBooks(book.volumeInfo.categories?[0] ?? '');

        Navigator.pushNamed(context, DetialsView.id, arguments: book);
      },
      //this is just a commit
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                errorBuilder: (context, error, stackTrace) => const Center(
                  child: Center(
                    child: Icon(Icons.error),
                  ),
                ),
                book.volumeInfo.imageLinks?.thumbnail ?? AssetsData.noImageUrl,
                fit: BoxFit.fill,
              )
              //  CachedNetworkImage(
              //   fit: BoxFit.cover,
              //   imageUrl:
              //      AssetsData.noImageUrl,
              //   placeholder: (context, url) => const CustomLoadingWidget(),
              //   errorWidget: (context, url, error) => const Center(
              //     child: Icon(
              //       Icons.error_outline,
              //     ),
              //   ),
              // ),
              ),
        ),
      ),
    );
  }
}
