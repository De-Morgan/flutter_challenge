import 'package:flutter/material.dart';
import 'package:flutter_challenge/style/colors.dart';
import 'package:flutter_challenge/ui/mixins/app_gradient_mixin.dart';
import 'package:flutter_challenge/ui/utils/assets_path.dart';
import 'package:flutter_challenge/ui/utils/constants.dart';

class ChallengeAppBar extends StatelessWidget
    with AppGradientMixin
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      overflow: Overflow.visible,
      children: <Widget>[
        Material(
          elevation: 4,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
            child: Container(
              height: 175,
              width: double.infinity,
              decoration: BoxDecoration(gradient: appGradient),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: sidePadding, vertical: 40),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: whiteColor,
              ),
              Spacer(),
              Image.asset(
                AssetsPath.featherIcon,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 90),
          padding: const EdgeInsets.symmetric(horizontal: sidePadding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(AssetsPath.autoIcon),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Al-Bakheet Garage",
                    style: Theme.of(context).primaryTextTheme.headline6,
                  ),
                  Text(
                    "Light and LED breaks",
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ],
              ),
              Spacer(
                flex: 2,
              ),
              Image.asset(AssetsPath.loveIcon)
              // Image.asset(AssetsPath.featherIcon,)
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(175);
}
