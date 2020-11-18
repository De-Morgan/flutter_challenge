import 'package:flutter/material.dart';
import 'package:flutter_challenge/style/colors.dart';
import 'package:flutter_challenge/ui/mixins/app_gradient_mixin.dart';

class ChallengeTab extends StatelessWidget with AppGradientMixin {
  final VoidCallback onTap;
  final bool isSelected;
  final String label;

  const ChallengeTab(
      {Key key, this.onTap, this.label = "", this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Container(
          alignment: Alignment.center,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: isSelected ? whiteColor : primaryColor),
              )),
          decoration: BoxDecoration(
              gradient: isSelected
                  ? appGradient
                  : LinearGradient(colors: [whiteColor, whiteColor]),
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
      ),
    );
  }
}
