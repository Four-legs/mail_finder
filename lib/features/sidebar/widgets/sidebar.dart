import 'package:flutter/material.dart';
import 'package:mail_finder/common/widgets/titled_outline_box.dart';
import 'package:mail_finder/features/sidebar/components/keyword_component.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
          ),
          const Flexible(
            flex: 3,
            child: KeywordComponent(),
          ),
          Flexible(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
