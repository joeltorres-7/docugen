import 'package:docugen/views/components/buttons/primary_button.dart';
import 'package:docugen/views/components/buttons/secondary_button.dart';
import 'package:docugen/views/components/cards/contract_form.dart';
import 'package:docugen/views/components/cards/terms_card.dart';
import 'package:docugen/views/styles/resources.dart';
import 'package:flutter/material.dart';

class BuilderView extends StatefulWidget {
  const BuilderView({Key? key});

  @override
  DocumentBuilder createState() => DocumentBuilder();
}

class DocumentBuilder extends State<BuilderView> {
  late bool _termsCheckedState;
  late String _documentType;
  late Widget _builderCurrent;
  late GlobalKey<FormState> _contractFormKey;

  @override
  void initState() {
    _termsCheckedState = false;
    _documentType = '';
    _contractFormKey = GlobalKey<FormState>();
    _builderCurrent = TermsCard(termsChecked: _termsCheckedState, onTermsChecked: _handleTermsChecked, onContinue: _handleTermsContinue);
    super.initState();
  }

  void _handleTermsChecked(bool checked) {
    setState(() {
      print('Received as: ' + checked.toString());
      _termsCheckedState = checked;
      print('Changed to: ' + _termsCheckedState.toString());
    });
  }

  void _handleTermsContinue(bool checked) {
    setState(() {
      _builderCurrent = ContractForm(formKey: _contractFormKey,);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Resources.colors.primary,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AnimatedSwitcher(duration: const Duration(seconds: 1), child: _builderCurrent)
        ],
      ),
    );
  }
}
