import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/managers/asset_manager.dart';
import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/font_style_manager.dart';
import '../../../../core/widgets/custom_action_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: SizedBox(
                  child: Column(children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    // Circular corners
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        // Shadow color
                        offset: const Offset(0, 7),
                        // Shift the shadow downwards
                        blurRadius: 15, // Blur effect of the shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      SvgAssetManager.logo,
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "mediconda",
                  style: FontStyleManager.getOverLockBold(
                      fontSize: 35, color: ColorManager.darkerBlue),
                ),
              ])),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomActionButton(
                text: "support me on instapay",
                svgPath: AssetManager.money_1,
                backgroundColor: ColorManager.darker2blue,
                textColor: Colors.white),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 2.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white, // Default gradient colors
                    Colors.black87, // Light blue
                    Colors.white,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomActionButton(
                text: "Share app with your friends",
                backgroundColor: ColorManager.darkerBlue,
                textColor: Colors.white),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 2.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white, // Default gradient colors
                    Colors.black87, // Light blue
                    Colors.white,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomActionButton(
                text: "Rate us on Google play",
                svgPath: AssetManager.star_rating_1,
                backgroundColor: ColorManager.darker2blue,
                textColor: Colors.white),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetManager.linkedin),
                const SizedBox(
                  width: 25,
                ),
                Image.asset(AssetManager.instagram),
                const SizedBox(
                  width: 25,
                ),
                Image.asset(AssetManager.twitter),
              ],
            )
          ],
        ),
      ),
    );
  }
}
