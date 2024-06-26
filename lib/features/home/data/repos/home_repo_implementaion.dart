import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/search/presentation/view_model/manager/interested_cubit/interested_cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeRepeImpl implements HomeRepo {
  final ApiService _apiService;

  HomeRepeImpl({required ApiService apiService}) : _apiService = apiService;

//get the newest books from all category
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks(
      {required String q}) async {
    try {
      var data = await _apiService.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Pagination=maxResults:40&sorting=newest&q=$q');
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

// get all books weither new or not
  @override
  Future<Either<Failure, List<BookModel>>> fetchtInterestedBooks(
      {required context}) async {
    String q = BlocProvider.of<InterestedCubit>(context).searched[0];
    try {
      var data = await _apiService.get(
          endpoint: 'volumes?&Pagination=maxResults:40&q=$q');
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
