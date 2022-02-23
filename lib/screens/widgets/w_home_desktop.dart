import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../components/custom_text_button.dart';
import '../../core/core.dart';
import 'w_recent_post_item_desktop.dart';
import 'w_featured_item_desktop.dart';

class WHomeDesktop extends StatelessWidget {
  const WHomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const SizedBox(height: 27),
            /// text buttons ['Work', 'Blog', 'Contact']
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  text: Strings.works,
                  onPressed: () {},
                ),
                const SizedBox(width: 33),
                CustomTextButton(
                  text: Strings.blog,
                  onPressed: () {},
                ),
                const SizedBox(width: 33),
                CustomTextButton(
                  text: Strings.contact,
                  onPressed: () {},
                ),
                const SizedBox(width: 60),
              ],
            ),
            const SizedBox(height: 140),
            /// man info section ['Who am I', 'Description', 'Image', 'Download']
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 148),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        constraints:const BoxConstraints(maxWidth: 484),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.whoAmI,
                              maxLines: 2,
                              style: AppStyles.styWhoAmIDesktop,
                            ),
                            const SizedBox(height: 40),
                            Text(
                              Strings.aboutMe,
                              maxLines: 4,
                              style: AppStyles.styAboutMe,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        assetsManImage,
                        width: 243,
                        height: 243,
                      ),
                    ],
                  ),
                  const SizedBox(height: 38),
                  /// download button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: secondaryColor,
                      padding: const EdgeInsets.symmetric(
                        vertical: 17,
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      Strings.downloadResume,
                      style: AppStyles.styWhite20W500,
                    ),
                  ),
                  const SizedBox(height: 71),
                ],
              ),
            ),
          ],
        ),
        Container(
          color: bgColor,
          height: 396,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 148, right: 148),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Strings.recentPosts, style: AppStyles.styRecentPosts),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        Strings.viewAll,
                        style: AppStyles.styBlueTextButton,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              SizedBox(
                height: 278,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                      PointerDeviceKind.stylus,
                      PointerDeviceKind.unknown,
                    },
                  ),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SizedBox(width: 148),
                      WRecentPostItemDesktop(
                        title: Strings.postTitle1,
                        topic: Strings.postTopic1,
                      ),
                      SizedBox(width: 20),
                      WRecentPostItemDesktop(
                        title: Strings.postTitle2,
                        topic: Strings.postTopic2,
                      ),
                      SizedBox(width: 20),
                      WRecentPostItemDesktop(
                        title: Strings.postTitle1,
                        topic: Strings.postTopic1,
                      ),
                      SizedBox(width: 20),
                      WRecentPostItemDesktop(
                        title: Strings.postTitle2,
                        topic: Strings.postTopic2,
                      ),
                      SizedBox(width: 148),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: clrWhite,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 148, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.featuredWorks,
                style: AppStyles.styRecentPosts,
              ),
              const SizedBox(height: 22),
              const WFeaturedItemDesktop(
                img: assetsFeatured1,
                title: Strings.featuredTitle1,
                topic: Strings.featuredTopic1,
              ),
              const SizedBox(height: 31),
              const WFeaturedItemDesktop(
                img: assetsFeatured2,
                title: Strings.featuredTitle2,
                topic: Strings.featuredTopic2,
              ),
              const SizedBox(height: 31),
              const WFeaturedItemDesktop(
                img: assetsFeatured3,
                title: Strings.featuredTitle3,
                topic: Strings.featuredTopic3,
              ),
              const SizedBox(height: 83),
            ],
          ),
        ),
        Container(
          color: clrWhite,
          height: 182,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(assetsFb),
                    const SizedBox(width: 35),
                    SvgPicture.asset(assetsInsta),
                    const SizedBox(width: 35),
                    SvgPicture.asset(assetsTwitter),
                    const SizedBox(width: 35),
                    SvgPicture.asset(assetsLinkedin),
                  ],
                ),
                const SizedBox(height: 26),
                Text(Strings.copyright, style: AppStyles.styCopyright),
              ],
            ),
          ),
        )
      ],
    );
  }
}
