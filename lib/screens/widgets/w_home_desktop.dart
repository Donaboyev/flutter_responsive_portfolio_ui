import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../components/custom_text_button.dart';
import '../../core/theme.dart';

class WHomeDesktop extends StatelessWidget {
  const WHomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 595,
          decoration: const BoxDecoration(
            color: clrWhite,
          ),
          child: Column(
            children: [
              const SizedBox(height: 27),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton(
                      text: textWork,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 33),
                    CustomTextButton(
                      text: textBlog,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 33),
                    CustomTextButton(
                      text: textContact,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 60),
                  ],
                ),
              ),
              const SizedBox(height: 140),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 148),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width - 2 * 148 - 343,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                textWhoAmI,
                                maxLines: 2,
                                style: AppStyles.styWhoAmIDesktop,
                              ),
                              const SizedBox(height: 40),
                              Text(
                                textAboutMe,
                                maxLines: 3,
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
            ],
          ),
        ),
        SizedBox(
          height: 396,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 148),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textRecentPosts,
                      style: AppStyles.styRecentPosts,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: AppStyles.styBlueTextButton,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
