import 'package:flutter/material.dart';

class ChangeDirectoryButton extends StatelessWidget {
  const ChangeDirectoryButton({super.key});

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.folder,
        color: Colors.black38,
      ),
      onPressed: () {},
    );
  }
}
