import 'package:flutter/material.dart';
import 'package:mail_finder/constants/sizes.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 1,
      child: Padding(
        padding: const EdgeInsets.all(Sizes.size10),
        child: Container(
          padding: const EdgeInsets.all(Sizes.size10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
