import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_portfolio_ui/core/app_assets.dart';
import 'package:responsive_portfolio_ui/screens/home/home_screen.dart';

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
      builder: (context, tabNotifier, child) => WillPopScope(
        onWillPop: () {
          debugPrint('=======> back button clicked');
          tabNotifier.changeScreen(context, Screen.home);
          return Future<bool>.value(true);
        },
        child: Scaffold(
          backgroundColor: clrWhite,
          endDrawer: Responsive.isDesktop(context)
              ? null
              : Drawer(
                  backgroundColor: clrWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ),
                        const SizedBox(height: 40),
                        CustomTextButton(
                          isSelected: tabNotifier.screen == Screen.home,
                          text: Strings.home,
                          onPressed: () {
                            tabNotifier.changeScreen(context, Screen.home);
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomTextButton(
                          isSelected: tabNotifier.screen == Screen.works,
                          text: Strings.works,
                          onPressed: () {
                            tabNotifier.changeScreen(context, Screen.works);
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomTextButton(
                          isSelected: tabNotifier.screen == Screen.blog,
                          text: Strings.blog,
                          onPressed: () {
                            tabNotifier.changeScreen(context, Screen.blog);
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomTextButton(
                          isSelected: tabNotifier.screen == Screen.contact,
                          text: Strings.contact,
                          onPressed: () {
                            tabNotifier.changeScreen(context, Screen.contact);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
          appBar: Responsive.isDesktop(context)
              ? AppBar(
                  toolbarHeight: 70,
                  backgroundColor: clrWhite,
                  elevation: 0,
                  titleSpacing: 60 +
                      ((size.width > maxWidth)
                          ? (size.width - maxWidth) / 2
                          : 0),
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
                    Builder(
                      builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                        icon: SvgPicture.asset(AppAssets.icMenu),
                      ),
                    ),
                    const SizedBox(width: 18),
                  ],
                ),
          body: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: WillPopScope(
              onWillPop: () {
                debugPrint('=====> mana back button');
                return Future<bool>.value(true);
              },
              child: Expanded(
                child: tabNotifier.currentScreen,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
