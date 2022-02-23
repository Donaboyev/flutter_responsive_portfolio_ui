import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../core/core.dart';

class WRecentPostItemMobile extends StatelessWidget {
  final String title;
  final String topic;

  const WRecentPostItemMobile({
    Key? key,
    required this.title,
    required this.topic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 266,
      width: 354,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: clrWhite,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 19),
        child: Column(
          children: [
            Text(
              title,
              style: AppStyles.styRecentItemTitleMobile,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  Strings.date,
                  style: AppStyles.styAboutMe,
                ),
                const SizedBox(width: 24),
                Container(
                  width: 1,
                  height: 21,
                  decoration: const BoxDecoration(color: clrBlack),
                ),
                const SizedBox(width: 24),
                Text(
                  topic,
                  style: AppStyles.styAboutMe,
                ),
              ],
            ),
            const SizedBox(height: 21),
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
