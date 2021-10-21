import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apptest/date_birth/date_bloc/date_bloc.dart';
import 'package:flutter_apptest/date_birth/widgets/years.dart';
import 'package:flutter_apptest/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_apptest/theme/color_theme.dart';
import 'package:flutter_apptest/theme/text_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen(this.choice, {Key? key}) : super(key: key);

  String? choice;
  int? index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
      if (state is ThirdScreenTappedState) {
        return Scaffold(
          backgroundColor: AppColors.whiteBackground,
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/icons/vector10.svg"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset("assets/icons/vector6.svg"),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.21317,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: SizedBox(
                        width: 323,
                        height: 34,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Third Screen",
                              style: AppTexsts.nunito25Black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "summary of selections:",
                      style: AppTexsts.nunito20Black,
                    ),
                    Text(
                      choice.toString(),
                      style: AppTexsts.nunito20Black,
                    ),
                    BlocBuilder<DateBloc, DateState>(
                      builder: (context, state) {
                        if (state is ChooseYearState) {
                          return Text(
                            "Year of birth: " +
                                ListYears.years[state.currentYearIndex],
                            style: AppTexsts.nunito20Black,
                          );
                        }
                        return const Center(child: Text("error"));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
      return const Text("error");
    });
  }
}
