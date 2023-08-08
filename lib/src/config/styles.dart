import 'package:flutter/material.dart';

import 'constants/color_constants.dart';

TextStyle yellowTextStyle = const TextStyle(
  color: ColorConstants.primaryYellow,
  fontSize: 10,
  fontWeight: FontWeight.w500,
);
TextStyle yellowTextStyle15 = const TextStyle(
  color: ColorConstants.primaryYellow,
  fontSize: 15,
  fontWeight: FontWeight.w500,
);
TextStyle yellowTextStyle14 = const TextStyle(
  color: ColorConstants.secondaryYellow,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
TextStyle whiteTextStyle = const TextStyle(
  color: Colors.white,
  fontSize: 10,
  fontWeight: FontWeight.w500,
);
TextStyle whiteTextStyle12 = const TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.w500,
);
TextStyle whiteTextStyle16 = const TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
LinearGradient linearGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.topRight,
  colors: [
    ColorConstants.secondaryYellow,
    Colors.white,
    ColorConstants.primaryYellow,
  ],
);
LinearGradient loginLinearGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.topRight,
  colors: [
    ColorConstants.primaryYellow,
    ColorConstants.secondaryYellow,
  ],
);
