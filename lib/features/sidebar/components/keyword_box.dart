import 'package:flutter/material.dart';
import 'package:mail_finder/common/widgets/keyword_chip.dart';
import 'package:mail_finder/common/widgets/titled_divider.dart';
import 'package:mail_finder/constants/sizes.dart';

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
    return FractionallySizedBox(
      heightFactor: 1,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.size10,
            ),
            child: TitledDivider(title: "Top Keywords"),
          ),
          Wrap(
            direction: Axis.horizontal,
            children: [
              for (var keyword in keywordSampleValues)
                KeywordChip(keyword: keyword),
            ],
          ),
        ],
      ),
    );
  }
}
