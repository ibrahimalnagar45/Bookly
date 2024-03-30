import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../../constants.dart';

part 'interested_state.dart';

class InterestedCubit extends Cubit<InterestedState> {
  InterestedCubit() : super(InterestedInitial());

  List<String> searched = [];

  addItem(String value) async {
    var interested = Hive.box(SearchedKey);
    if (!interested.values.contains(value)) {
      interested.put(0, value);
    } else {}

    searched = interested.values.toList().cast<String>();
    emit(InterestedSuccess());
  }

  modifyList(int index) {
    String temp = searched[0];
    searched[0] = searched[index];
    searched[index] = temp;
    emit(InterestedSuccess());
  }
}
