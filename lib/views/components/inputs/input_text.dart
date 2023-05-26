import 'package:docugen/views/styles/resources.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({Key? key, required this.label, required this.hint}) : super(key: key);

  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Resources.textStyles.formLabel,
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 6.0,
        ),
        TextFormField(
          style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
                top: 6.0,
                left: 12.0,
                right: 12.0,
                bottom: 6.0),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: Color(0xFFC2C2C2)),
              borderRadius: BorderRadius.circular(12.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: Color(0xFFC2C2C2)),
              borderRadius: BorderRadius.circular(12.0),
            ),
            hintText: hint,
            floatingLabelBehavior:
                FloatingLabelBehavior.never,
            hintStyle: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ],
    );
  }
}