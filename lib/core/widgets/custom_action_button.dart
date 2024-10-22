import 'package:flutter/cupertino.dart';
import 'package:mediconda/core/managers/color_manager.dart';

import '../managers/font_style_manager.dart';

class CustomActionButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final String? svgPath;
  final Color? iconColor;
  final String? appLink;
  const CustomActionButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.svgPath, // Made this optional
    this.appLink,
    this.iconColor

  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap action
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Check if svgPath is not null before using it
              if (svgPath != null)
                Image.asset(
                  svgPath!,
                  height: 50, // Adjusted size for visibility
                  width: 35,
                  color:iconColor,
                ),
              const SizedBox(width: 10),
              Text(
                text,
                style: FontStyleManager.getOverLockRegular(color: textColor, fontSize: 30),
              ),
              const SizedBox(width: 10),
              if (svgPath != null)
                Image.asset(
                  svgPath!,
                  height: 50, // Adjusted size for visibility
                  width: 35,
                    color:iconColor
                ),
            ],
          ),
        ),
      ),
    );
  }
}
