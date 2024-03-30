part of 'interested_cubit.dart';

sealed class InterestedState extends Equatable {
  const InterestedState();

  @override
  List<Object> get props => [];
}

final class InterestedInitial extends InterestedState {}

final class InterestedSuccess extends InterestedState {}
