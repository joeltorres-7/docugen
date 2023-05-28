part of 'document_form_bloc.dart';

@immutable
abstract class DocumentFormState extends Equatable {
  const DocumentFormState();

  @override
  List<Object> get props => [];
}

class DocumentFormInitial extends DocumentFormState {
  final bool termsChecked;
  final String documentType;

  final String buyerName;
  final String buyerIdType;
  final String buyerIdNumber;
  final String sellerName;
  final String sellerIdType;
  final String sellerIdNumber;

  final String propertyCity;
  final String propertyDepartment;
  final String propertyAddress;

  final String canonValue;
  final String leasingStartDate;
  final String leasingEndDate;
  final String isAdminQuoteCanon;

  final String paymentToName;
  final String bankName;
  final String accountType;
  final String accountNumber;

  const DocumentFormInitial(
      {required this.termsChecked,
      this.documentType = '',
      this.buyerName = '',
      this.buyerIdType = '',
      this.buyerIdNumber = '',
      this.sellerName = '',
      this.sellerIdType = '',
      this.sellerIdNumber = '',
      this.propertyCity = '',
      this.propertyDepartment = '',
      this.propertyAddress = '',
      this.canonValue = '',
      this.leasingStartDate = '',
      this.leasingEndDate = '',
      this.isAdminQuoteCanon = '',
      this.paymentToName = '',
      this.bankName = '',
      this.accountType = '',
      this.accountNumber = ''});

    List<Object> get props => [termsChecked];
}
