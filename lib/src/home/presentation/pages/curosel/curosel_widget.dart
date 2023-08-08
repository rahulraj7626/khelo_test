import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khelo_test/src/home/presentation/bloc/curosel/curosel_bloc.dart';

import 'method_widgets.dart';

class CuroselWidget extends StatelessWidget {
  const CuroselWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        carouselSlider(context),
        const SizedBox(height: 10),
        BlocBuilder(
          bloc: BlocProvider.of<CuroselBloc>(context),
          builder: (BuildContext context, CuroselState state) {
            if (state is CuroselInitial) {
              return carouselIndicator(context, 0);
            }
            if (state is CuroselChangeState) {
              return carouselIndicator(context, state.curoselPosition);
            }
            return const SizedBox();
          },
        ),
      ],
    );
  }
}
