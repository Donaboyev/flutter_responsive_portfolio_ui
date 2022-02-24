import 'package:flutter/material.dart';

import '../core/theme.dart';
import '../constants.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool isSelected;

  const CustomTextButton({
    Key? key,
    required this.isSelected,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text,
          style: isSelected
              ? AppStyles.styRed20W500
              : AppStyles.styTextButtonAppBar),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return bgColor.withOpacity(0.2);
            }
            return bgColor;
          },
        ),
      ),
    );
  }
}
