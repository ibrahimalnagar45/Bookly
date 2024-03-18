import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'relevance_cubit_state.dart';

class RelevanceCubitCubit extends Cubit<RelevanceCubitState> {
  RelevanceCubitCubit(this._homeRepo) : super(RelevanceCubitInitial());

  final HomeRepo _homeRepo;
  Future<void> fetchRelevanceBooks( String category) async {
    emit(RelevanceCubitLoading());
    var books = await _homeRepo.fetchtRelevanceBooks(category);
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
