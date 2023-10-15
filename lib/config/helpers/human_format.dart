import 'package:intl/intl.dart';

class HumanFormat {
  static String readbleNumber(int number) {
    final formatterNumber = NumberFormat.compactCurrency(
      symbol: '',
      decimalDigits: 0,
    ).format(number);

    return formatterNumber;
  }
}
