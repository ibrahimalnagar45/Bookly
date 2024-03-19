import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'relevance_cubit_state.dart';

class RelevanceCubitCubit extends Cubit<RelevanceCubitState> {
  RelevanceCubitCubit(this._searchRepo) : super(RelevanceCubitInitial());
 
  final SearchRpo _searchRepo;
  Future<void> fetchRelevanceBooks(String category) async {
    emit(RelevanceCubitLoading());
    var books = await _searchRepo.fetchtRelevanceBooks(category);
    books.fold(
      (failure) => emit(
        RelevanceCubitFailure(errMessage: failure.errorMessage),
      ),
      (books) => emit(
        RelevanceCubitSucess(books: books),
      ),
    );
  }
}
