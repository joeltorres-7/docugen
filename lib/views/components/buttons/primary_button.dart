import 'package:flutter/material.dart';
import '../../styles/resources.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: Resources.colors.primary,
        foregroundColor: Colors.white,
        textStyle: Resources.textStyles.primaryButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        )
      ),
      child: Text(text)
    );
  }
}