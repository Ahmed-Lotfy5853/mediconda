import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediconda/features/onboarding/presentation/widgets/custom_image.dart';
import '../../../../core/managers/font_style_manager.dart';
import '../models/onboarding_data.dart';

class OnboardingContent extends StatelessWidget {
  final OnboardingData data;

  const OnboardingContent({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:25.w,vertical: 25.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(imagePath: data.image),
           SizedBox(height: 8.h),
          Text(
            data.title,
            style: const TextStyle(
              fontSize: FontSizeManager.s24,
              fontWeight:FontWeightManager.bold,
            ),
          ),
           SizedBox(height: 4.h),
          Text(
            data.subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: FontSizeManager.s16),
          ),
        ],
      ),
    );
  }
}
