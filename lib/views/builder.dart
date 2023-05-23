import 'package:docugen/views/components/buttons/primary_button.dart';
import 'package:docugen/views/components/buttons/secondary_button.dart';
import 'package:docugen/views/styles/resources.dart';
import 'package:flutter/material.dart';

class BuilderView extends StatefulWidget {
  const BuilderView({Key? key});

  @override
  DocumentBuilder createState() => DocumentBuilder();
}

class DocumentBuilder extends State<BuilderView> {
  bool _termsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Resources.colors.primary,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          FractionallySizedBox(
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
                                style: Resources.textStyles.heading2,
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
                              value: _termsChecked,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? value) {
                                setState(() {
                                  _termsChecked = value!;
                                });
                              },
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
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
                                        if (_termsChecked) {
                                          Navigator.pop(context);
                                        } else {
                                          null;
                                        }
                                      },
                                      text: Resources.strings.continueButton,
                                      disabled: !_termsChecked),
                                )
                              ]),
                        ]),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
