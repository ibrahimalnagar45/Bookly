part of 'all_books_cubit.dart';

sealed class AllBooksState extends Equatable {
  const AllBooksState();

  @override
  List<Object> get props => [];
}

final class AllBooksInitial extends AllBooksState {}

final class AllBooksLoading extends AllBooksState {}

final class AllBookssucess extends AllBooksState {
  final List<BookModel> books;

const  AllBookssucess({required this.books});

}

final class AllBooksFailure extends AllBooksState {
  final String errMessage;

  const AllBooksFailure({required this.errMessage});
}
