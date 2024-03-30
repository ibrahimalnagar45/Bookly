part of 'relevance_cubit.dart';

sealed class RelevanceCubitState extends Equatable {
  const RelevanceCubitState();

  @override
  List<Object> get props => [];
}

final class RelevanceCubitInitial extends RelevanceCubitState {}

final class RelevanceCubitLoading extends RelevanceCubitState {}

final class RelevanceCubitSucess extends RelevanceCubitState {
  final List<BookModel> books;

  const RelevanceCubitSucess({required this.books});
}

final class RelevanceCubitFailure extends RelevanceCubitState {
  final String errMessage;
  const RelevanceCubitFailure({required this.errMessage});
}
