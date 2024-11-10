import 'package:flutter/material.dart';
import 'package:mail_finder/common/widgets/titled_divider.dart';
import 'package:mail_finder/constants/sizes.dart';
import 'package:mail_finder/features/sidebar/widgets/change_directory_button.dart';

class CurrentDirectoryBox extends StatelessWidget {
  final String directoryPath;
  const CurrentDirectoryBox({
    super.key,
    required this.directoryPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.size8),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: Sizes.size10),
                child: ChangeDirectoryButton(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.size8),
              child: Text(
                directoryPath,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
