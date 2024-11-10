import 'package:flutter/material.dart';
import 'package:mail_finder/constants/gaps.dart';
import 'package:mail_finder/constants/sizes.dart';
import 'package:mail_finder/features/chat/widgets/message_mail_result.dart';
import 'package:mail_finder/models/chat_message_model.dart';

class Message extends StatelessWidget {
  final ChatMessageModel chatMessageModel;
  MessageMailResult? messageMailResult;

  Message({
    super.key,
    required this.chatMessageModel,
    this.messageMailResult,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.size10),
        child: Column(
          mainAxisAlignment: chatMessageModel.role == "Human"
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          crossAxisAlignment: chatMessageModel.role == "Human"
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: chatMessageModel.role == "Human"
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                Text(
                  chatMessageModel.role,
                  style: const TextStyle(
                    fontSize: Sizes.size20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gaps.h10,
                Text(
                  chatMessageModel.createdAt,
                  style: const TextStyle(
                    fontSize: Sizes.size10,
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
            Text(chatMessageModel.content),
          ],
        ),
      ),
    );
  }
}
