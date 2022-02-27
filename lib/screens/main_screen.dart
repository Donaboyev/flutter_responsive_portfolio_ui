import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_portfolio_ui/core/app_assets.dart';

import '../bloc/tab_notifier.dart';
import '../components/components.dart';
import '../constants.dart';
import '../core/strings.dart';
import '../responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Consumer<TabNotifier>(
      builder: (context, tabNotifier, child) => Scaffold(
        backgroundColor: clrWhite,
        appBar: Responsive.isDesktop(context)
            ? AppBar(
                toolbarHeight: 70,
                backgroundColor: clrWhite,
                elevation: 0,
                titleSpacing: 60 +
                    ((size.width > maxWidth) ? (size.width - maxWidth) / 2 : 0),
                title: CustomTextButton(
                  text: Strings.home,
                  onPressed: () {
                    tabNotifier.changeScreen(context, Screen.home);
                  },
                  isSelected: tabNotifier.screen == Screen.home,
                ),
                actions: [
                  CustomTextButton(
                    isSelected: tabNotifier.screen == Screen.works,
                    text: Strings.works,
                    onPressed: () {
                      tabNotifier.changeScreen(context, Screen.works);
                    },
                  ),
                  const SizedBox(width: 33),
                  CustomTextButton(
                    isSelected: tabNotifier.screen == Screen.blog,
                    text: Strings.blog,
                    onPressed: () {
                      tabNotifier.changeScreen(context, Screen.blog);
                    },
                  ),
                  const SizedBox(width: 33),
                  CustomTextButton(
                    isSelected: tabNotifier.screen == Screen.contact,
                    text: Strings.contact,
                    onPressed: () {
                      tabNotifier.changeScreen(context, Screen.contact);
                    },
                  ),
                  SizedBox(
                    width: 60 +
                        ((size.width > maxWidth)
                            ? (size.width - maxWidth) / 2
                            : 0),
                  ),
                ],
              )
            : AppBar(
                toolbarHeight: 50,
                backgroundColor: clrWhite,
                elevation: 0,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppAssets.icMenu),
                  ),
                  const SizedBox(width: 18),
                ],
              ),
        // body: Center(
        //   child: Container(
        //     constraints: const BoxConstraints(maxWidth: maxWidth),
        //     child: CustomScrollView(
        //       slivers: [
        //         Responsive.isDesktop(context)
        //             ? Consumer<TabNotifier>(
        //                 builder: (context, tabNotifier, child) {
        //                   return SliverAppBar(
        //                     elevation: 1,
        //                     backgroundColor: clrWhite,
        //                     floating: true,
        //                     leadingWidth: 191,
        //                     leading: CustomTextButton(
        //                       isSelected: tabNotifier.screen == Screen.home,
        //                       text: Strings.home,
        //                       onPressed: () {
        //                         tabNotifier.changeScreen(context, Screen.home);
        //                       },
        //                     ),
        //                     actions: [
        //                       CustomTextButton(
        //                         isSelected: tabNotifier.screen == Screen.works,
        //                         text: Strings.works,
        //                         onPressed: () {
        //                           tabNotifier.changeScreen(context, Screen.works);
        //                         },
        //                       ),
        //                       const SizedBox(width: 33),
        //                       CustomTextButton(
        //                         isSelected: tabNotifier.screen == Screen.blog,
        //                         text: Strings.blog,
        //                         onPressed: () {
        //                           tabNotifier.changeScreen(context, Screen.blog);
        //                         },
        //                       ),
        //                       const SizedBox(width: 33),
        //                       CustomTextButton(
        //                         isSelected: tabNotifier.screen == Screen.contact,
        //                         text: Strings.contact,
        //                         onPressed: () {
        //                           tabNotifier.changeScreen(
        //                               context, Screen.contact);
        //                         },
        //                       ),
        //                       const SizedBox(width: 60),
        //                     ],
        //                   );
        //                 },
        //               )
        //             : SliverAppBar(
        //                 backgroundColor: clrWhite,
        //                 elevation: 0,
        //                 toolbarHeight: 50,
        //                 actions: [
        //                   Builder(
        //                     builder: (context) => Padding(
        //                       padding: const EdgeInsets.only(right: 18.0),
        //                       child: IconButton(
        //                         icon: SvgPicture.asset(assetsIconMenu),
        //                         onPressed: () {
        //                           debugPrint('======> open drawer');
        //                         },
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
