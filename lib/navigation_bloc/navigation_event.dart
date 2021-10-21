part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent {}

//инициализация
class NavigationInitialEvent extends NavigationEvent {
  final int index;

  NavigationInitialEvent({required this.index});
}

//нажатия
class PageTappedEvent extends NavigationEvent {
  final int index;

  PageTappedEvent({required this.index});
}
