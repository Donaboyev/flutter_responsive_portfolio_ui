import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../../constants.dart';

class WFeaturedItemMobile extends StatelessWidget {
  final String img;
  final String title;
  final String topic;

  const WFeaturedItemMobile({
    Key? key,
    required this.img,
    required this.title,
    required this.topic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 339,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  img,
                  width: 339,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 17),
              Text(
                title,
                style: AppStyles.styFeaturedTitleMobile,
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 339,
            child: Row(
              children: [
                Container(
                  width: 62,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: clrFeaturedYear,
                  ),
                  child: Text(
                    Strings.featuredYear1,
                    style: AppStyles.styFeaturedYearMobile,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 26),
                Text(
                  topic,
                  style: AppStyles.styFeaturedTopicMobile,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 339,
            child: Text(
              Strings.postDescription,
              style: AppStyles.styAboutMe,
              maxLines: 4,
            ),
          ),
          const SizedBox(height: 17),
          const SizedBox(width: 339, child: Divider(color: clrDivider)),
        ],
      ),
    );
  }
}
