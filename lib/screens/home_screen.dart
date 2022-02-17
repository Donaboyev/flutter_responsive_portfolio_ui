import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../responsive.dart';
import '../components/custom_text_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Column(
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
