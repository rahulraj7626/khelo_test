import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khelo_test/src/home/domain/usecases/extentions.dart';
import 'package:khelo_test/src/home/presentation/bloc/home/home_bloc.dart';

import '../../../config/constants/color_constants.dart';
import '../../../config/constants/string_constants.dart';
import '../../../config/styles.dart';
import '../../data/datasources/game_image_list.dart';

class GameListWidget extends StatelessWidget {
  const GameListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final isExpanded = state is ExpandedState ? true : false;

        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 40,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 10,
                    decoration: BoxDecoration(
                        color: ColorConstants.yellowMain,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    Strings.mostPopular,
                    style: whiteTextStyle16,
                  ),
                  const Expanded(child: SizedBox()),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(ShowMoreEvent(state));
                      // provider.toggleShowMore();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.yellowMain,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      isExpanded ? Strings.hide : Strings.showMore,
                      style: whiteTextStyle12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1),
                itemCount: isExpanded ? 8 : 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              gameImageList[index],
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 2, color: ColorConstants.yellowMain)),
                    margin: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        cardBottomWidget(),
                      ],
                    ),
                  );
                },
              ).wrapWithSizedBoxHeight(isExpanded ? 8 : 4, 2, context),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        );
      },
    );
  }

  Container cardBottomWidget() {
    return Container(
      height: 20,
      color: ColorConstants.violet,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Min", style: whiteTextStyle12),
          Text(" ₹", style: yellowTextStyle14),
          Text("10", style: whiteTextStyle12),
          Text(
            " | ",
            style: yellowTextStyle14,
          ),
          Text("Max", style: whiteTextStyle12),
          Text(" ₹", style: yellowTextStyle14),
          Text("100k", style: whiteTextStyle12),
        ],
      ),
    );
  }
}
