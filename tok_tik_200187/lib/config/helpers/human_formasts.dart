import 'package:intl/intl.dart';

class HumanFormasts {
  static String humanReableNumbre(double number) {

    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    return formatterNumber;
  }
}
