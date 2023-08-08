import 'package:flutter/material.dart';

import '../../../config/constants/color_constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Column(
        children: [
          ShaderMask(
            blendMode: BlendMode.srcATop,
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  ColorConstants.yellow,
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds);
            },
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                letterSpacing: 0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Divider(
            indent: MediaQuery.of(context).size.width / 3,
            endIndent: MediaQuery.of(context).size.width / 3,
            color: ColorConstants.yellowMain,
            thickness: 2,
          )
        ],
      ),
    );
  }
}

Padding divider() {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Divider(
      color: ColorConstants.yellowMain,
      endIndent: 200,
      thickness: 3,
    ),
  );
}
