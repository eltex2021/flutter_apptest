import 'package:flutter/material.dart';
import 'package:flutter_apptest/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_apptest/theme/color_theme.dart';
import 'package:flutter_apptest/theme/text_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ChoiceScreen extends StatelessWidget {
  ChoiceScreen({Key? key}) : super(key: key);

  String choice = "";

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
                      SvgPicture.asset("assets/icons/vector16.svg"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset("assets/icons/vector5.svg"),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.28236 + 371,
                left: 67,
                //bottom: MediaQuery.of(context).size.height *0.15178,
                child: Stack(
                  children: [
                    SizedBox(
                      child: SvgPicture.asset("assets/icons/vector16_2.svg"),
                    ),
                    Positioned(
                      left: 73,
                      //top: ,
                      child: SizedBox(
                        child: SvgPicture.asset("assets/icons/vector17.svg"),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.28236,
                //top: 253,
                left: (MediaQuery.of(context).size.width - 343) / 2,
                child: Column(
                  children: [
                    SizedBox(
                      width: 343,
                      height: 131,
                      child: TextButton(
                        onPressed: () {
                          context
                              .read<NavigationBloc>()
                              .add(PageTappedEvent(index: 1));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Track my period",
                                  style: AppTexsts.nunito30Black,
                                ),
                                Flexible(
                                  child: Text(
                                    "contraception and wellbeing",
                                    style: AppTexsts.nunito20Black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/icons/vector1.svg"),
                              ],
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.purePink),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 73,
                    ),
                    SizedBox(
                      width: 343,
                      height: 131,
                      child: TextButton(
                        onPressed: () {
                          context
                              .read<NavigationBloc>()
                              .add(PageTappedEvent(index: 2));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Get pregnant",
                                  style: AppTexsts.nunito30Black,
                                ),
                                Flexible(
                                  child: Text(
                                    "learn about reproductive health",
                                    style: AppTexsts.nunito20Black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/icons/vector1.svg"),
                              ],
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.purePink),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
