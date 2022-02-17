import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../responsive.dart';
import '../components/custom_text_button.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              toolbarHeight: 50,
              actions: [
                Builder(
                  builder: (context) => Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: IconButton(
                      icon: SvgPicture.asset('assets/images/svg/ic_menu.svg'),
                      onPressed: () {
                        debugPrint('======> open drawer');
                      },
                    ),
                  ),
                ),
              ],
            ),
      body: SingleChildScrollView(
        child: Responsive.isDesktop(context)
            ? Column(
                children: [
                  Container(
                    height: 595,
                    decoration: const BoxDecoration(
                      color: Colors.white,
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
                                text: 'Work',
                                onPressed: () {},
                              ),
                              const SizedBox(width: 33),
                              CustomTextButton(
                                text: 'Blog',
                                onPressed: () {},
                              ),
                              const SizedBox(width: 33),
                              CustomTextButton(
                                text: 'Contact',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: size.width - 2 * 148 - 343,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hi, I am John,\nCreative Technologist',
                                          maxLines: 2,
                                          style: GoogleFonts.heebo(
                                            textStyle: const TextStyle(
                                              fontSize: 44,
                                              fontWeight: FontWeight.w700,
                                              color: primaryColor,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 40),
                                        Text(
                                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                                          maxLines: 3,
                                          style: GoogleFonts.heebo(
                                            textStyle: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: primaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/png/man_image.png',
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
                                  'Download resume',
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
                ],
              )
            : Column(
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
                          'assets/images/png/man_image.png',
                          width: 170,
                          height: 170,
                        ),
                        const SizedBox(height: 34),
                        Text(
                          'Hi, I am John,\nCreative Technologist',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.heebo(
                            textStyle: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 21),
                        Text(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                          maxLines: 4,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.heebo(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: primaryColor,
                            ),
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
                            'Download resume',
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
    );
  }
}
