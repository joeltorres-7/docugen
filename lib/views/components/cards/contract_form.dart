import 'package:flutter/material.dart';

import '../../styles/resources.dart';

class ContractForm extends StatelessWidget {
  const ContractForm({Key? key}) : super(key: key);

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
                          const SizedBox(
                            height: 16.0,
                          ),
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