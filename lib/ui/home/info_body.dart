



import 'package:flutter/material.dart';
import 'package:flutter_challenge/ui/mixins/app_gradient_mixin.dart';
import 'package:flutter_challenge/ui/utils/assets_path.dart';
import 'package:flutter_challenge/ui/utils/constants.dart';

import 'widgets/about_card.dart';
import 'widgets/make_component_button.dart';

class InfoBody extends StatelessWidget with AppGradientMixin {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: sidePadding),
            child: Image.asset(
              AssetsPath.googleMap,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: sidePadding),
            child: AboutGarageCard(),
          ),
          const SizedBox(height: 16),
          MakeComponentButton(onPressed: (){},)
        ],
      ),
    );
  }
}
