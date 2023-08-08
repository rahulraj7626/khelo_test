import 'package:flutter/material.dart';

import '../../../config/constants/color_constants.dart';
import '../../../config/styles.dart';

class LanguageContainer extends StatelessWidget {
  const LanguageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          divider(),
          blueContainer(),
          divider(),
        ],
      ),
    );
  }

  Container blueContainer() {
    return Container(
        height: 50,
        alignment: Alignment.center,
        color: ColorConstants.violet,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: languages
              .map((language) => Container(
                    alignment: Alignment.center,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(language, style: yellowTextStyle15),
                  ))
              .toList(),
        ));
  }

  Container divider() {
    return Container(
        height: 5, decoration: BoxDecoration(gradient: linearGradient));
  }
}
