import 'package:flutter/material.dart';
import 'package:mail_finder/constants/sizes.dart';

class KeywordChip extends StatefulWidget {
  final String keyword;
  const KeywordChip({
    super.key,
    required this.keyword,
  });

  @override
  State<KeywordChip> createState() => _KeywordChipState();
}

class _KeywordChipState extends State<KeywordChip> {
  bool _isSelected = false;

  void onSelected() {
    if (_isSelected) {
      setState(() {
        _isSelected = false;
      });
    } else {
      setState(() {
        _isSelected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO : onTap action

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size8,
        vertical: Sizes.size4,
      ),
      child: ChoiceChip(
        elevation: 1.0,
        backgroundColor: _isSelected
            ? Theme.of(context).colorScheme.primary
            : Colors.grey.shade50,
        label: Text(widget.keyword),
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.w400,
        ),
        shadowColor: Colors.grey.shade400,
        onSelected: (bool isSelected) => {onSelected()},
        selected: _isSelected,
      ),
    );
  }
}
