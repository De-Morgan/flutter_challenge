



import 'package:flutter/material.dart';
import 'package:flutter_challenge/ui/mixins/app_gradient_mixin.dart';

class MakeComponentButton extends StatelessWidget with AppGradientMixin {

 final VoidCallback onPressed;

  const MakeComponentButton({Key key, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(gradient: appGradient),
        alignment: Alignment.center,
        child: Text(
          "Make appointment",
          style: Theme.of(context).primaryTextTheme.headline6,
        ),
      ),
    );
  }
}
