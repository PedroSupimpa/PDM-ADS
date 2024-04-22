import 'package:intl/intl.dart';

class DateFormatter {
  static final DateFormat _dateFormatter = DateFormat('dd/MM/yyyy');
  static String formatDate(DateTime date) => _dateFormatter.format(date);
}
