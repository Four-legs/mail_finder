import 'package:flutter/material.dart';
import 'package:mail_finder/constants/sizes.dart';
import 'package:mail_finder/features/chat/components/message_box.dart';
import 'package:mail_finder/features/chat/widgets/chat_message_input.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 1,
      child: Padding(
        padding: const EdgeInsets.all(Sizes.size10),
        child: Card(
          elevation: 2,
          child: Container(
            padding: const EdgeInsets.all(Sizes.size10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.size10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MessageBox(),
                  Divider(),
                  ChatMessageInput(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
