part of 'document_form_bloc.dart';

@immutable
abstract class DocumentFormEvent extends Equatable {
  const DocumentFormEvent();

  @override
  List<Object> get props => [];
}

class CheckTerms extends DocumentFormEvent {
  final bool termsChecked;

  const CheckTerms({required this.termsChecked});

  @override
  List<Object> get props => [termsChecked];
}