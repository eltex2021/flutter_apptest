import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apptest/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_apptest/theme/color_theme.dart';
import 'package:flutter_apptest/theme/text_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'date_bloc/date_bloc.dart';

class DateBirthScreen extends StatelessWidget {
  DateBirthScreen({Key? key}) : super(key: key);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
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
                //top: 191,
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
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Log in your date of birth",
                              style: AppTexsts.nunito25Black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.016,
                    ),
                    BlocBuilder<DateBloc, DateState>(
                      builder: (context, state) {
                        return SizedBox(
                          width: 355,
                          height: 298,
                          child: CupertinoPicker(
                            itemExtent: 67,
                            onSelectedItemChanged: (int value) {
                              print(value);
                              index = value;
                              context
                                  .read<DateBloc>()
                                  .add(ChooseYearEvent(index: index));
                            },
                            children: const [
                              Text("1993", style: AppTexsts.nunito40Grey),
                              Text("1994", style: AppTexsts.nunito40Grey),
                              Text("1995", style: AppTexsts.nunito40Grey),
                              Text("1996", style: AppTexsts.nunito40Grey),
                              Text("1997", style: AppTexsts.nunito40Grey),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 12,
                left: 24,
                child: SvgPicture.asset("assets/icons/line.svg"),
              ),
              Positioned(
                top: 28,
                right: 75,
                child: SizedBox(
                    child: SvgPicture.asset("assets/icons/ellipse14.svg")),
              ),
              Positioned(
                top: 63,
                right: 70,
                child: SizedBox(
                    child: SvgPicture.asset("assets/icons/ellipse15.svg")),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.32404,
                right: 0,
                child: SizedBox(
                    child: SvgPicture.asset("assets/icons/vector14.svg")),
              ),
              Positioned(
                bottom: 72,
                left: 28,
                child: SizedBox(
                    child: SvgPicture.asset("assets/icons/vector9.svg")),
              ),
              Positioned(
                bottom: 81,
                left: (MediaQuery.of(context).size.width - 189) / 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        // begin: Alignment.topRight,
                        // end: Alignment.bottomRight,
                        begin: Alignment(0.0, 0.00),
                        end: Alignment(0.0, 1),
                        colors: [
                          AppColors.purpleButton.withOpacity(0.9),
                          AppColors.purpleButton.withOpacity(0.70),
                          //AppColors.purple2Button.withOpacity(0.85)
                        ]),
                  ),
                  width: 189,
                  height: 50,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                    ),
                    onPressed: () {
                      context
                          .read<NavigationBloc>()
                          .add(PageTappedEvent(index: 3));
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 68,
                        ),
                        const Text("Next",
                            style: AppTexsts.nunito20White,
                            textAlign: TextAlign.center),
                        const SizedBox(
                          width: 22,
                        ),
                        SvgPicture.asset("assets/icons/vector2.svg"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
