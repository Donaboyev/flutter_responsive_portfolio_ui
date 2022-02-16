import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../responsive.dart';

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
      body: const Center(
        child: Text('Home screen'),
      ),
    );
  }
}
