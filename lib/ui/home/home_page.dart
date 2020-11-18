import 'package:flutter/material.dart';
import 'package:flutter_challenge/ui/home/info_body.dart';
import 'package:flutter_challenge/ui/mixins/app_gradient_mixin.dart';
import 'package:flutter_challenge/ui/utils/constants.dart';

import 'widgets/challenge_app_bar.dart';
import 'widgets/change_tab_widget.dart';

class ChallengeHomePage extends StatefulWidget {
  @override
  _ChallengeHomePageState createState() => _ChallengeHomePageState();
}

class _ChallengeHomePageState extends State<ChallengeHomePage>
    with SingleTickerProviderStateMixin, AppGradientMixin {
  int _tabIndex = 0;

  final _bodys = <Widget>[
    InfoBody(),
    Center(
      child: Text("Service"),
    ),    Center(
      child: Text("Reviews"),
    ),
    Center(
      child: Text("Products"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ChallengeAppBar(),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: sidePadding),
            child: Row(
              children: [
                Expanded(
                  child: ChallengeTab(
                    label: "Info",
                    isSelected: _tabIndex == 0,
                    onTap: () {
                      setState(() {
                        _tabIndex = 0;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ChallengeTab(
                    label: "Service",
                    isSelected: _tabIndex == 1,
                    onTap: () {
                      setState(() {
                        _tabIndex = 1;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ChallengeTab(
                    label: "Reviews",
                    isSelected: _tabIndex == 2,
                    onTap: () {
                      setState(() {
                        _tabIndex = 2;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ChallengeTab(
                    label: "Products",
                    isSelected: _tabIndex == 3,
                    onTap: () {
                      setState(() {
                        _tabIndex = 3;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(child: _bodys[_tabIndex])
        ],
      ),
    );
  }
}

/*
class AppBarPainter extends CustomPainter with AppGradientMixin{

  final double avatarRadius;

  AppBarPainter({this.avatarRadius = 60});

  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final paint = Paint()
      ..shader = appGradient.createShader(Rect.fromPoints(Offset(0, 0), Offset(width, height)));


    final arc1 = Offset(width*0.08, height * 0.8);


    final path = Path();

    path.addRect(Rect.fromLTRB(0, 0, width, height * 0.8));
    path.moveTo(arc1.dx, arc1.dy);
    path.quadraticBezierTo( arc1.dx + avatarRadius, height, arc1.dx + 2 * avatarRadius,height*0.8);


    canvas.drawPath(path, paint);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}*/
