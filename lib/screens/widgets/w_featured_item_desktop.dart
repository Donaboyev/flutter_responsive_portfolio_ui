import 'package:flutter/material.dart';

import '../../core/theme.dart';
import '../../constants.dart';

class WFeaturedItemDesktop extends StatelessWidget {
  final String img;
  final String title;
  final String topic;

  const WFeaturedItemDesktop({
    Key? key,
    required this.img,
    required this.title,
    required this.topic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width - 148 * 2,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                img,
                width: 246,
                height: 180,
              ),
              const SizedBox(width: 18),
              Container(
                constraints: BoxConstraints(
                  maxWidth: size.width - 2 * 148 - 18 - 246,
                  maxHeight: 180,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: AppStyles.styFeaturedTitle,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 62,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: clrFeaturedYear,
                          ),
                          child: Text(
                            textFeaturedYear1,
                            style: AppStyles.styFeaturedYear,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(width: 26),
                        Text(
                          topic,
                          style: AppStyles.styFeaturedTopic,
                        ),
                      ],
                    ),
                    Text(
                      textPostDescription,
                      style: AppStyles.styAboutMe,
                      maxLines: 3,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          const Divider(color: clrDivider),
        ],
      ),
    );
  }
}
