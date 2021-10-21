import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'date_event.dart';

part 'date_state.dart';

class DateBloc extends Bloc<DateEvent, DateState> {
  DateBloc() : super(DateInitial());
  int currentYearIndex = 0;

  @override
  Stream<DateState> mapEventToState(
    DateEvent event,
  ) async* {
    if (event is DateInitialEvent) {
      yield DateInitialState(0);
    }
    if (event is ChooseYearEvent) {
      currentYearIndex = event.index;
      // print("currentYearIndex = event.index;");
      // print(currentYearIndex);
      yield ChooseYearState(currentYearIndex);
    }
    //yield DateInitialState(currentYearIndex);
  }
}
