import 'package:flutter/material.dart';
import 'package:mail_finder/features/sidebar/widgets/sidebar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
      ),
      body: Container(
        child: Row(
          children: [
            const Flexible(
              flex: 2,
              child: Sidebar(),
            ),
            Flexible(
              flex: 7,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
