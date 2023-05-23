import 'package:flutter/material.dart';
import '../../styles/resources.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {Key? key, required this.onPressed, required this.text, this.iconName})
      : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final String? iconName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Resources.colors.primary_400,
            foregroundColor: Resources.colors.primary,
            textStyle: Resources.textStyles.secondaryButton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            )),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                color: Resources.colors.primary,
                size: 18.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(text)
            ]));
  }
}
