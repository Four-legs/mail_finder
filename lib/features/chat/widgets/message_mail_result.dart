import 'package:flutter/material.dart';

// After AI found mail for user's query,
// show the mail's information through this widget.
// on tap action, user can open .eml file immediately (if possible)

class MessageMailResult extends StatelessWidget {
  const MessageMailResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.email_rounded,
            color: Theme.of(context).colorScheme.primary,
          ),
          const Text("Test Result MailNanem.eml"),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.open_in_new_rounded),
          )
        ],
      ),
    );
  }
}
