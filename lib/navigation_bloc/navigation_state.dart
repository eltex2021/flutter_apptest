part of 'navigation_bloc.dart';

@immutable
abstract class NavigationState {}

class NavigationInitial extends NavigationState {
  final int currentIndex;

  NavigationInitial(this.currentIndex);
}

class ChoiceScreenState extends NavigationState {
  final int currentIndex = 0;
}

class TrackPeriodTappedState extends NavigationState {
  final int currentIndex = 1;
}

class GetPregnantTappedState extends NavigationState {
  final int currentIndex = 2;
}

class ThirdScreenTappedState extends NavigationState {
  final int currentIndex = 3;
}
