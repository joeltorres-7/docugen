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
  late Widget _builderCurrent;
  late GlobalKey<FormState> _contractFormKey;

  @override
  void initState() {
    _contractFormKey = GlobalKey<FormState>();
    _builderCurrent = TermsCard(onContinue: _handleTermsContinue);
    super.initState();
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
