import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit(this._homeRepo) : super(AllBooksInitial());
  final HomeRepo _homeRepo;

  Future<void> fetchAllBooks({required context}) async {
    emit(AllBooksLoading());
    var books = await _homeRepo.fetchtInterestedBooks(context:context );

    books.fold(
      (failure) => emit(AllBooksFailure(errMessage: failure.errorMessage)),
      (books) => emit(
        AllBookssucess(books: books),
      ),
    );
  }
}
