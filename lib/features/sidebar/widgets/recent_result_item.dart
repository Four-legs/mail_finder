import 'package:flutter/material.dart';
import 'package:mail_finder/constants/gaps.dart';
import 'package:mail_finder/constants/sizes.dart';

class RecentResultItem extends StatelessWidget {
  final String queryString;
  const RecentResultItem({
    super.key,
    required this.queryString,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gaps.h10,
            const Icon(Icons.email),
            Gaps.h10,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    "[$queryString]에 대한 메일",
                    style: const TextStyle(
                      fontSize: Sizes.size12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    "RE : TEST 메일 제목",
                    style: TextStyle(
                      fontSize: Sizes.size10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Gaps.h10,
          ],
        ),
      ),
    );
  }
}
