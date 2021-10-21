import 'package:flutter/material.dart';
import 'package:flutter_apptest/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'choice_screen/choice_screen.dart';
import 'choice_screen/navigation.dart';
import 'date_birth/date_bloc/date_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flora Test Task',
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NavigationBloc(),
          ),
          BlocProvider(
            create: (context) => DateBloc()..add(DateInitialEvent(index: 0)),
          ),
        ],
        child: Navigation(),
      ),
    );
  }
}
