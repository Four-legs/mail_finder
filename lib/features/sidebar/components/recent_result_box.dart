import 'package:flutter/material.dart';
import 'package:mail_finder/common/widgets/titled_divider.dart';
import 'package:mail_finder/constants/sizes.dart';
import 'package:mail_finder/features/sidebar/widgets/recent_result_item.dart';

List<String> SampleQueryList = [
  "2024년 11월 08일 회의",
  "MRO 출장비 정산",
  "임원회의 보고자료",
  "프로젝트 제안 검토 요청",
  "전자결재 자동화",
  "TEST 메일 확인 요청"
];

class RecentResultBox extends StatelessWidget {
  const RecentResultBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitledDivider(title: "Recent Searches"),
        Expanded(
          child: ListView.builder(
            itemCount: SampleQueryList.length,
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size10,
              vertical: Sizes.size5,
            ),
            itemBuilder: (context, index) {
              return RecentResultItem(queryString: SampleQueryList[index]);
            },
          ),
        ),
      ],
    );
  }
}
