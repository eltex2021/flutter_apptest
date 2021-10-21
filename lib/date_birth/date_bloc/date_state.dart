part of 'date_bloc.dart';

@immutable
abstract class DateState {}

class DateInitial extends DateState {}

class DateInitialState extends DateState {
  final int currentYearIndex;
  DateInitialState(this.currentYearIndex);
}

class ChooseYearState extends DateState {
  final int currentYearIndex;
ChooseYearState(this.currentYearIndex);
}