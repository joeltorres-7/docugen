import 'package:docugen/views/components/buttons/primary_button.dart';
import 'package:docugen/views/styles/resources.dart';
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({Key? key, required this.cardTitle, required this.cardDescription, required this.buttonText, required this.onPressed}) : super(key: key);

  final String cardTitle;
  final String cardDescription;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24.0))
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0, right: 24.0, bottom: 24.0, left: 24.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      cardTitle,
                      style: Resources.textStyles.heading2,
                    )
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      cardDescription,
                      style: Resources.textStyles.paragraph2,
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24.0), child: PrimaryButton(onPressed: onPressed, text: buttonText, disabled: false))
                ]
              ),
            ),
          ],
        ),
      )
    );
  }
}