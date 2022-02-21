import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../constants.dart';
import '../../core/theme.dart';
import 'w_recent_post_item_mobile.dart';
import 'w_featured_item_mobile.dart';

class WHomeMobile extends StatelessWidget {
  const WHomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 570,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              const SizedBox(height: 33),
              Image.asset(
                assetsManImage,
                width: 170,
                height: 170,
              ),
              const SizedBox(height: 34),
              Text(
                textWhoAmI,
                textAlign: TextAlign.center,
                style: AppStyles.styWhoAmIMobile,
              ),
              const SizedBox(height: 21),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 1024 - 2 * 200,
                ),
                child: Text(
                  textAboutMe,
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: AppStyles.styAboutMe,
                ),
              ),
              const SizedBox(height: 27),
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
                  textDownloadResume,
                  style: GoogleFonts.heebo(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 679,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 10),
            child: Column(
              children: [
                Text(
                  textRecentPosts,
                  style: AppStyles.styRecentItemDate,
                ),
                const SizedBox(height: 17),
                const WRecentPostItemMobile(
                  title: textPostTitle1,
                  topic: textPostTopic1,
                ),
                const SizedBox(height: 17),
                const WRecentPostItemMobile(
                  title: textPostTitle2,
                  topic: textPostTopic2,
                ),
                const SizedBox(height: 17),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    textViewAll,
                    style: AppStyles.styBlueTextButton,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: clrWhite,
          height: 60,
          child: Center(
            child: Text(
              textFeaturedWorks,
              style: AppStyles.styRecentItemDate,
            ),
          ),
        ),
        Container(
          color: clrWhite,
          height: 476,
          width: double.infinity,
          child: CarouselSlider(
            options: CarouselOptions(
              disableCenter: true,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 1500),
              pauseAutoPlayOnTouch: true,
              viewportFraction: 0.8,
              enlargeCenterPage: true,
            ),
            items: const [
              WFeaturedItemMobile(
                img: assetsFeatured1,
                title: textFeaturedTitle1,
                topic: textFeaturedTopic1,
              ),
              WFeaturedItemMobile(
                img: assetsFeatured2,
                title: textFeaturedTitle2,
                topic: textFeaturedTopic2,
              ),
              WFeaturedItemMobile(
                img: assetsFeatured3,
                title: textFeaturedTitle3,
                topic: textFeaturedTopic3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
