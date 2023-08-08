import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/constants/color_constants.dart';
import '../../bloc/curosel/curosel_bloc.dart';

DotsIndicator carouselIndicator(BuildContext context, index) {
  return DotsIndicator(
    position: index,
    dotsCount: carouselImages.length,
    decorator: DotsDecorator(
      size: const Size(20, 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      activeColor: ColorConstants.secondaryYellow,
      activeSize: const Size(20, 4),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      spacing: const EdgeInsets.symmetric(vertical: 20, horizontal: 3),
      color: Colors.grey,
    ),
  );
}

CarouselSlider carouselSlider(BuildContext context) {
  return CarouselSlider(
    items: carouselImages
        .map((image) => Image.asset(
              image,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ))
        .toList(),
    options: CarouselOptions(
      height: 200,
      autoPlay: true,
      enlargeCenterPage: true,
      viewportFraction: 1,
      onPageChanged: (index, reason) {
        context.read<CuroselBloc>().add(CuroselChangeEvent(index));
      },
    ),
  );
}
