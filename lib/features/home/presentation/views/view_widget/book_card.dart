import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manager/relevance_cubit/relevance_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../details_view.dart';
import 'rating_widget.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<RelevanceCubitCubit>(context).fetchRelevanceBooks();

        Navigator.pushNamed(context, DetialsView.id, arguments: book);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: SizedBox(
              height: 150,
              child: AspectRatio(
                aspectRatio: 1 / 1.5,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: (book.volumeInfo!.imageLinks!.thumbnail!),
                    errorWidget: (context, url, error) => const Center(
                      child: Icon(Icons.error_outline),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  book.volumeInfo!.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: ' GT Sectra Fine',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  book.volumeInfo!.authors?[0] ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: ' GT Sectra Fine',
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Free',
                    style: TextStyle(
                      fontFamily: ' GT Sectra Fine',
                      color: Colors.white,
                      fontSize: 20,
                      // fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Rating(
                    book: book,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
