import 'package:flutter/material.dart';
import 'package:mail_finder/features/chat/components/chat_box.dart';
import 'package:mail_finder/features/sidebar/components/sidebar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
        backgroundColor: Colors.purple.shade100,
      ),
      body: const Row(
        children: [
          Flexible(
            flex: 2,
            child: Sidebar(),
          ),
          Flexible(
            flex: 7,
            child: ChatBox(),
          )
        ],
      ),
    );
  }
}
