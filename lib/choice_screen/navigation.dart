import 'package:flutter/material.dart';
import 'package:flutter_apptest/date_birth/date_birth_screen.dart';
import 'package:flutter_apptest/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_apptest/third_screen/third_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'choice_screen.dart';

class Navigation extends StatelessWidget {
  Navigation({Key? key}) : super(key: key);

  String choice = "";
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          if (state is NavigationInitial) {
            return ChoiceScreen();
          }
          if (state is TrackPeriodTappedState) {
            choice = "Track my period";
            return DateBirthScreen();
          }
          if (state is GetPregnantTappedState) {
            choice = "Get pregnant";
            return DateBirthScreen();
          }
          if (state is ThirdScreenTappedState) {
            return ThirdScreen(choice);
          }
          return const Text("Error");
        },
      ),
    );
  }
}
