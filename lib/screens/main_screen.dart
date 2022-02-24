import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../responsive.dart';
import '../constants.dart';
import '../components/components.dart';
import '../core/strings.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: CustomScrollView(
            slivers: [
              Responsive.isDesktop(context)
                  ? SliverAppBar(
                      elevation: 1,
                      backgroundColor: clrWhite,
                      floating: true,
                      leadingWidth: 191,
                      leading: CustomTextButton(
                        text: Strings.home,
                        onPressed: () {},
                      ),
                      actions: [
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
                    )
                  : SliverAppBar(
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
            ],
          ),
        ),
      ),
    );
  }
}
