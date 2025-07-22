abstract class Extra {
  const Extra();

  static TransactionDetailExtra sendTransactionDetailExtra(TransactionDetailExtra extra) => extra;

  static TransactionDetailExtra? receiveTransactionDetailExtra(Object? extra) {
    if (extra is! TransactionDetailExtra) return null;
    return extra;
  }

  static PaymentResultExtra sendPaymentResultExtra(PaymentResultExtra extra) => extra;

  static PaymentResultExtra? receivePaymentResultExtra(Object? extra) {
    if (extra is! PaymentResultExtra) return null;
    return extra;
  }
}

class TransactionDetailExtra extends Extra {
  const TransactionDetailExtra({required this.backButtonRoutePath});

  final String backButtonRoutePath;
}

class PaymentResultExtra extends Extra {
  const PaymentResultExtra({required this.referenceNumber, this.isManualChek = false});

  final String referenceNumber;
  final bool isManualChek;
}
