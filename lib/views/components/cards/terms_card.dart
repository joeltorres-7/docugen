import 'dart:html';

import 'package:docugen/views/components/buttons/primary_button.dart';
import 'package:docugen/views/components/buttons/secondary_button.dart';
import 'package:flutter/material.dart';

import '../../styles/resources.dart';

class TermsCard extends StatelessWidget {
  const TermsCard({super.key, required this.termsChecked, required this.onTermsChecked, required this.onContinue});
  
  final bool termsChecked;
  final ValueChanged<bool> onTermsChecked;
  final ValueChanged<bool> onContinue;

  void _handleCheck() {
    onTermsChecked(termsChecked);
  }

  void _handleContinue() {
    if (termsChecked) {
      onContinue(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.3,
      heightFactor: 0.5,
      child: SizedBox(
          width: 260.0,
          child: DecoratedBox(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(24.0))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 32.0, right: 24.0, bottom: 24.0, left: 24.0),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          Resources.strings.termsBoxTitle,
                          style: Resources.textStyles.headingCard,
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          Resources.strings.termsBoxDescription,
                          style: Resources.textStyles.paragraph2,
                        )),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 24.0),
                      child: Flexible(
                          child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: Resources.strings.termsAccept,
                              style: Resources.textStyles.paragraph2,
                            ),
                            TextSpan(
                              text: Resources.strings.termsAndConditions,
                              style: Resources.textStyles.primaryLink,
                            ),
                            TextSpan(
                              text: Resources.strings.of,
                              style: Resources.textStyles.paragraph2,
                            ),
                            TextSpan(
                              text: Resources.strings.docuGen,
                              style: Resources.textStyles.paragraphBold,
                            ),
                          ],
                        ),
                      )),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    CheckboxListTile(
                        title: Text(
                          Resources.strings.termsRead,
                          style: Resources.textStyles.paragraph2,
                        ),
                        value: termsChecked,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: ((value) => _handleCheck()),
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              return Resources.colors.accent;
                            }
                            return Resources.colors.accent;
                          },
                        )),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: SecondaryButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  text: Resources.strings.backButton)),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: PrimaryButton(
                                onPressed: () {
                                  onContinue(true);
                                },
                                text: Resources.strings.continueButton,
                                disabled: !termsChecked),
                          )
                        ]),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
