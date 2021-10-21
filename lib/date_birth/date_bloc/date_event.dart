part of 'date_bloc.dart';

@immutable
abstract class DateEvent {}


//init
class DateInitialEvent extends DateEvent{
  final int index;

  DateInitialEvent({required this.index});
}

//Choose Year
class ChooseYearEvent extends DateEvent{
  final int index;


  ChooseYearEvent({required this.index});
}
