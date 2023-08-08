import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khelo_test/src/home/presentation/bloc/timer/timer_bloc.dart';

import '../../../../config/constants/color_constants.dart';

class CountingWidget extends StatelessWidget {
  const CountingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    callPeriodic(context);
    return Container(
      padding: const EdgeInsets.all(30),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 230,
            width: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/images/jackpot.png",
              ),
              fit: BoxFit.fitWidth,
            )),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 36, top: 20),
              child: BlocBuilder(
                bloc: BlocProvider.of<TimerBloc>(context),
                builder: (BuildContext context, TimerState state) {
                  return countWidget(state.timerValue);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text countWidget(int val) {
    return Text(
      (val.toString()),
      style: const TextStyle(
        color: ColorConstants.red,
        fontSize: 36,
        letterSpacing: 11,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

callPeriodic(BuildContext context) {
  Timer? timer;

  timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    context.read<TimerBloc>().add(TimerStartEvent());
  });
}
