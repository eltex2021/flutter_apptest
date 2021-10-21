import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_apptest/choice_screen/choice_screen.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';

part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial(0));
  int currentIndex = 0;
  String choice = "";

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    if (event is NavigationInitialEvent) {
      yield NavigationInitial(0);
    }
    ;
    if (event is PageTappedEvent) {
      currentIndex = event.index;
      if (currentIndex == 0) {
        yield ChoiceScreenState();
      }
    }

    if (event is PageTappedEvent) {
      currentIndex = event.index;
      if (currentIndex == 1) {
        //print("currentIndex == 1");
        choice = "Track my period";
        yield TrackPeriodTappedState();
      }
    }

    if (event is PageTappedEvent) {
      currentIndex = event.index;
      if (currentIndex == 2) {
        //print("currentIndex == 2");
        yield GetPregnantTappedState();
      }
    }

    if (event is PageTappedEvent) {
      currentIndex = event.index;
      if (currentIndex == 3) {
        yield ThirdScreenTappedState();
      }
    }
  }
}
