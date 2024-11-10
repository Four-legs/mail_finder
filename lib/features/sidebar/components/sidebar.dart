import 'package:flutter/material.dart';
import 'package:mail_finder/constants/sizes.dart';
import 'package:mail_finder/features/sidebar/components/current_directory_box.dart';
import 'package:mail_finder/features/sidebar/widgets/embed_button.dart';
import 'package:mail_finder/features/sidebar/components/keyword_box.dart';
import 'package:mail_finder/features/sidebar/components/recent_result_box.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size10,
      ),
      child: const Column(
        children: [
          Flexible(
            flex: 1,
            child: CurrentDirectoryBox(
              directoryPath: "C:/user/TestUserDirectory/",
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: KeywordComponent(),
          ),
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: RecentResultBox(),
          ),
          Flexible(
            flex: 1,
            child: EmbedButton(),
          ),
        ],
      ),
    );
  }
}
