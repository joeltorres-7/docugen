import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'document_form_event.dart';
part 'document_form_state.dart';

class DocumentFormBloc extends Bloc<DocumentFormEvent, DocumentFormInitial> {
  DocumentFormBloc() : super(const DocumentFormInitial(termsChecked: false)) {
    on<CheckTerms>(_updateTermsCheckState);
  }

  void _updateTermsCheckState(
      CheckTerms event, Emitter<DocumentFormInitial> emit) async {
    try {
      emit(DocumentFormInitial(termsChecked: !state.termsChecked));
    } catch (e) {
      print(e);
    }
  }
}
