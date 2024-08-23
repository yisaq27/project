import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pop/core/config/assets/app_image.dart';
import 'package:pop/core/config/assets/app_vector.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBG),
              ),
            ),
            child: Column(
              children: [
              Align(
                alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo
                  ),
                ),
                const Spacer(),
                Text(
                  'Enjoy Listening To Music',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                 ),
                )
              ],
            ),
            
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
    );
  }
}
