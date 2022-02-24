import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../constants.dart';
import '../../../core/core.dart';
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
                Strings.whoAmI,
                textAlign: TextAlign.center,
                style: AppStyles.styWhoAmIMobile,
              ),
              const SizedBox(height: 21),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 1024 - 2 * 200,
                ),
                child: Text(
                  Strings. aboutMe,
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
                  Strings.downloadResume,
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
                  Strings.recentPosts,
                  style: AppStyles.styRecentItemDate,
                ),
                const SizedBox(height: 17),
                const WRecentPostItemMobile(
                  title: Strings.postTitle1,
                  topic:Strings. postTopic1,
                ),
                const SizedBox(height: 17),
                const WRecentPostItemMobile(
                  title: Strings.postTitle2,
                  topic: Strings.postTopic2,
                ),
                const SizedBox(height: 17),
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
        ),
        Container(
          color: clrWhite,
          height: 60,
          child: Center(
            child: Text(
              Strings.featuredWorks,
              style: AppStyles.styRecentItemDate,
            ),
          ),
        ),
        Container(
          color: clrWhite,
          height: 476+150,
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
                title: Strings.featuredTitle1,
                topic: Strings.featuredTopic1,
              ),
              WFeaturedItemMobile(
                img: assetsFeatured2,
                title: Strings.featuredTitle2,
                topic: Strings.featuredTopic2,
              ),
              WFeaturedItemMobile(
                img: assetsFeatured3,
                title: Strings.featuredTitle3,
                topic: Strings.featuredTopic3,
              ),
            ],
          ),
        ),
        Container(
          color: clrWhite,
          height: 182,
          // margin: const EdgeInsets.only(top: 150),
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
      ],
    );
  }
}
