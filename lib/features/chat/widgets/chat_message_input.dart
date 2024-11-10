import 'package:flutter/material.dart';

class ChatMessageInput extends StatelessWidget {
  const ChatMessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: SizedBox(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            hintText: "Type Message to Chatbot",
            suffixIcon: const Icon(Icons.send_rounded),
            prefixIcon: const Icon(Icons.message_rounded),
            iconColor: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
