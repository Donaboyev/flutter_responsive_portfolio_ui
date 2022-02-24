import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'widgets/w_home_desktop.dart';
import 'widgets/w_home_mobile.dart';
import '../../components/bouncing/bouncing_physics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
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
      body: Center(
        child: Container(
          color: clrWhite,
          constraints: const BoxConstraints(maxWidth: 1152),
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: false,
            ),
            child: Responsive.isDesktop(context)
                ? const WHomeDesktop()
                : const WHomeMobile(),
          ),
        ),
      ),
    );
  }
}
