import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitial());
  final HomeRepo _homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var books = await _homeRepo.fetchNewestBooks();

    books.fold(
      (failure) => emit(
        NewestBooksFailure(errMessage: failure.errorMessage),
      ),
      (books) => emit(
        NewestBooksSucess(books: books),
      ),
    );
  }
}
