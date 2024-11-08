import 'package:flutter/material.dart';
import 'package:mail_finder/common/widgets/keyword_chip.dart';
import 'package:mail_finder/common/widgets/titled_outline_box.dart';

const keywordSampleValues = [
  "보고",
  "계약",
  "검토",
  "정산",
  "MRO 프로젝트",
  "전자결재",
  "회의",
];

class KeywordComponent extends StatelessWidget {
  const KeywordComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return TitledOutlineBox(
      title: "keyword",
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          for (var keyword in keywordSampleValues)
            KeywordChip(keyword: keyword),
        ],
      ),
    );
  }
}
