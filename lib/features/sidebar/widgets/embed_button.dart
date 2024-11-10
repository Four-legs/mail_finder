import 'package:flutter/material.dart';
import 'package:mail_finder/constants/sizes.dart';

class EmbedButton extends StatefulWidget {
  const EmbedButton({super.key});

  @override
  State<EmbedButton> createState() => _EmbedButtonState();
}

class _EmbedButtonState extends State<EmbedButton> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.size10),
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        child: TextButton.icon(
          onPressed: () => {},
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          icon: const Icon(Icons.add),
          label: const Text("Embed Files"),
        ),
      ),
    );
  }
}
