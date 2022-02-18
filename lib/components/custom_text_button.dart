import 'package:flutter/material.dart';

import '../core/theme.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text, style: AppStyles.styTextButtonAppBar),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.purple.withOpacity(0.2);
            }
            return Colors.black;
          },
        ),
      ),
    );
  }
}
