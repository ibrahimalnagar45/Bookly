import 'package:bookly/constants.dart';
 import 'package:bookly/features/home/data/models/book_model/book_model.dart';
 import 'package:bookly/features/home/presentation/views/details_view_app_bar.dart';
import 'package:bookly/features/home/presentation/views/details_view_body.dart';
import 'package:flutter/material.dart'; 

class DetialsView extends StatelessWidget {
  const DetialsView({super.key});
  static String id = 'Review View';

  @override
  Widget build(BuildContext context) {
    var book = ModalRoute.of(context)!.settings.arguments as BookModel;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          automaticallyImplyLeading: false,
          title: const DetailsViewAppBar()),
      body: DetailsViewBody(
        book: book,
      ),
    );
  }
}
