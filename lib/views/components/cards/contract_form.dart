import 'package:docugen/views/components/inputs/input_text.dart';
import 'package:flutter/material.dart';

import '../../styles/resources.dart';

class ContractForm extends StatelessWidget {
  const ContractForm({Key? key, required this.formKey}) : super(key: key);
  final GlobalKey<FormState> formKey;

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
                          Resources.strings.step +
                              ' 1 ' +
                              Resources.strings.of +
                              '5',
                          style: Resources.textStyles.stepper,
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Información del comprador',
                          style: Resources.textStyles.headingCard,
                        )),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Form(
                      key: formKey,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputText(
                              label: 'Nombre del comprador',
                              hint: 'Jose Fernando Perez Obrador'),
                          SizedBox(
                            height: 8.0,
                          ),
                          InputText(
                              label: 'Número de documento', hint: '123456789'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
