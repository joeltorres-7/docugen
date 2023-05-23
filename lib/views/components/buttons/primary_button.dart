import 'package:flutter/material.dart';
import '../../styles/resources.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.onPressed, required this.text, required this.disabled}) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: disabled ? Resources.colors.primary_400 : Resources.colors.primary,
        foregroundColor: disabled ? Resources.colors.disabledText : Colors.white,
        textStyle: Resources.textStyles.primaryButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        )
      ),
      child: Text(text)
    );
  }
}