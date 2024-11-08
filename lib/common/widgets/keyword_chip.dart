import 'package:flutter/material.dart';

class KeywordChip extends StatelessWidget {
  final String keyword;
  const KeywordChip({
    super.key,
    required this.keyword,
  });

  @override
  Widget build(BuildContext context) {
    // TODO : onTap action
    return Chip(
      label: Text(keyword),
    );
  }
}
