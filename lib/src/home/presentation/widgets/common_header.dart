import 'package:flutter/material.dart';
import 'package:khelo_test/src/config/constants/string_constants.dart';

import '../../../config/styles.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Image.asset(
              "assets/images/logo.gif",
              fit: BoxFit.cover,
            ),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/promotion_icon.png",
                  height: 25,
                ),
                Text(Strings.promotions, style: yellowTextStyle)
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            decoration: BoxDecoration(gradient: loginLinearGradient),
            alignment: Alignment.center,
            child: Text(
              Strings.login,
              style: whiteTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
