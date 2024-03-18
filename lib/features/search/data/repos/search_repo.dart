import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../home/data/models/book_model/book_model.dart';

abstract class SearchRpo{



Future<Either<Failure, List<BookModel>>> fetchtRelevanceBooks(String q);


}