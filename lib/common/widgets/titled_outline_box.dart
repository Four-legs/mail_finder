import 'package:flutter/material.dart';
import 'package:mail_finder/constants/gaps.dart';
import 'package:mail_finder/constants/sizes.dart';

class TitledOutlineBox extends StatelessWidget {
  final String title;
  final Widget child;
  const TitledOutlineBox({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size6,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Gaps.v8,
                FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: child,
                  ),
                )
              ],
            ),
            FractionallySizedBox(
              widthFactor: 1,
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
