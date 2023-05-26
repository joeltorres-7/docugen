import 'package:docugen/views/styles/resources.dart';
import 'package:flutter/material.dart';

class InputDropDown extends StatelessWidget {
  const InputDropDown({Key? key, required this.label, required this.hint, required this.onDocumentTypeChanged}) : super(key: key);

  final String label;
  final String hint;
  final String _dropdownValue = '';
  final ValueChanged<String> onDocumentTypeChanged;

  void _handleDocumentType() {
    onDocumentTypeChanged(_dropdownValue);
  }

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
        DropdownButton(
          items: const [
            DropdownMenuItem<String>(value: 'citizenship_id', child: Text('Cédula de Ciudadania')),
            DropdownMenuItem<String>(value: 'card_id', child: Text('Tarjeta de Identidad')),
            DropdownMenuItem<String>(value: 'passport_id', child: Text('Pasaporte')),
            DropdownMenuItem<String>(value: 'nit_id', child: Text('NIT'))
          ],
          value: _dropdownValue,
          onChanged: (v) => _handleDocumentType()
        )
      ],
    );
  }
}