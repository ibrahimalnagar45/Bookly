import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../home/data/models/book_model/book_model.dart';
import '../../../home/data/repos/home_repo.dart';

class SearchRepoImpl implements SearchRpo {
  final ApiService _apiService;
  SearchRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchtRelevanceBooks(
      String q) async {
    try {
      var data = await _apiService.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Pagination=maxResults:40&sorting=relevance &q=subject:$q');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
