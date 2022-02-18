import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_portfolio_ui/core/theme.dart';
import '../responsive.dart';
import '../components/custom_text_button.dart';
import '../constants.dart';
import 'widgets/w_home_desktop.dart';
import 'widgets/w_home_mobile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: clrWhite,
              elevation: 0,
              toolbarHeight: 50,
              actions: [
                Builder(
                  builder: (context) => Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: IconButton(
                      icon: SvgPicture.asset(assetsIconMenu),
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
            ? const WHomeDesktop()
            : const WHomeMobile(),
      ),
    );
  }
}
