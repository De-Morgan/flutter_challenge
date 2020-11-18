import 'package:flutter/cupertino.dart';
import 'package:flutter_challenge/style/colors.dart';

mixin AppGradientMixin {
  LinearGradient get appGradient => LinearGradient(
        colors: [primaryColor, primaryColorLight],
      );
}
