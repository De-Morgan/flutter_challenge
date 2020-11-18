import 'package:flutter/material.dart';
import 'package:flutter_challenge/style/colors.dart';
import 'package:flutter_challenge/ui/utils/assets_path.dart';

class AboutGarageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "About Al-Bakheet:",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: primaryColor),
                ),
                Spacer(),
                Stack(
                  children: [
                    CustomPaint(
                        painter: IdContainerPainter(),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                        )),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ID No.",
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                          Text(
                            "24367",
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 12),
            Container(
              child: Text(
                """Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elit.
            """,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              height: 150,
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Saturday",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Colors.black),
                    ),
                    Text(
                      "8am - 10pm",
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "From",
                      style: Theme.of(context).textTheme.subtitle2.copyWith(),
                    ),
                    Container(
                      height: 1,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.black),
                    )
                  ],
                ),
                Image.asset(AssetsPath.clock),
                Column(
                  children: [
                    Text(
                      "To",
                      style: Theme.of(context).textTheme.subtitle2.copyWith(),
                    ),
                    Container(
                      height: 1,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Thursday",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Colors.black),
                    ),
                    Text(
                      "8am - 10pm",
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Tags:",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: primaryColor),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Container(
              height: 110,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.spaceBetween,
                      spacing: 6,
                      children: [
                        Chip(label: Text("Toyota car")),
                        Chip(label: Text("Brakes")),
                        Chip(label: Text("Bumps")),
                        Chip(label: Text("Prado")),
                        Chip(label: Text("Toyota wheels")),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "View more...",
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontSize: 12, color: primaryColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class IdContainerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final paint = Paint()..color = primaryColorLight;

    final path = Path()
      ..lineTo(0, height * 0.75)
      ..lineTo(width * 0.5, height)
      ..lineTo(width, height * 0.75)
      ..lineTo(width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
