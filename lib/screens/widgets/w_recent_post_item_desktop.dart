import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../core/core.dart';

class WRecentPostItemDesktop extends StatelessWidget {
  final String title;
  final String topic;

  const WRecentPostItemDesktop({
    Key? key,
    required this.title,
    required this.topic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 418,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: clrWhite,
      ),
      child: Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          children: [
            Text(
              title,
              style: AppStyles.styRecentItemTitle,
            ),
            const SizedBox(height: 17),
            Row(
              children: [
                Text(
                  Strings.date,
                  style: AppStyles.styRecentItemDate,
                ),
                const SizedBox(width: 26),
                Container(
                  width: 1,
                  height: 21,
                  decoration: const BoxDecoration(color: clrBlack),
                ),
                const SizedBox(width: 26),
                Text(
                  topic,
                  style: AppStyles.styRecentItemDate,
                ),
              ],
            ),
            const SizedBox(height: 11),
            Text(
              Strings.postDescription,
              style: AppStyles.styAboutMe,
            ),
          ],
        ),
      ),
    );
  }
}
