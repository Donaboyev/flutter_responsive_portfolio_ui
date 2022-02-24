import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../responsive.dart';
import '../constants.dart';
import '../components/components.dart';
import '../core/strings.dart';
import '../bloc/tab_notifier.dart';

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
                  ? Consumer<TabNotifier>(
                      builder: (context, tabNotifier, child) {
                        return SliverAppBar(
                          elevation: 1,
                          backgroundColor: clrWhite,
                          floating: true,
                          leadingWidth: 191,
                          leading: CustomTextButton(
                            isSelected: tabNotifier.screen == Screen.home,
                            text: Strings.home,
                            onPressed: () {
                              tabNotifier.changeScreen(Screen.home);
                            },
                          ),
                          actions: [
                            CustomTextButton(
                              isSelected: tabNotifier.screen == Screen.works,
                              text: Strings.works,
                              onPressed: () {
                                tabNotifier.changeScreen(Screen.works);
                              },
                            ),
                            const SizedBox(width: 33),
                            CustomTextButton(
                              isSelected: tabNotifier.screen == Screen.blog,
                              text: Strings.blog,
                              onPressed: () {
                                tabNotifier.changeScreen(Screen.blog);
                              },
                            ),
                            const SizedBox(width: 33),
                            CustomTextButton(
                              isSelected: tabNotifier.screen == Screen.contact,
                              text: Strings.contact,
                              onPressed: () {
                                tabNotifier.changeScreen(Screen.contact);
                              },
                            ),
                            const SizedBox(width: 60),
                          ],
                        );
                      },
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
