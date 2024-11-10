import 'package:flutter/material.dart';
import 'package:mail_finder/constants/sizes.dart';
import 'package:mail_finder/features/chat/widgets/message.dart';
import 'package:mail_finder/models/chat_message_model.dart';

List<String> msgSampleValues = [
  "Test Message from USER (same as query)",
  "Test Response from AI (same as result)\nI found some mails that you want!\nLet me know if I found wrong mail.",
];

List<String> msgRoleSample = ["Human", "AI"];

class MessageBox extends StatelessWidget {
  // final List<ChatMessageModel> messageList;
  const MessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: msgSampleValues.length,
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size10,
          vertical: Sizes.size10,
        ),
        itemBuilder: (context, index) {
          return Message(
            chatMessageModel: ChatMessageModel(
                content: msgSampleValues[index],
                role: msgRoleSample[index],
                createdAt: "2024.11.10"),
          );
        },
      ),
    );
  }
}
