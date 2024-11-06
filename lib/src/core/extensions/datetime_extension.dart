import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isAfterDay(DateTime other) {
    return isAfter(other) || isSameDay(other);
  }

  String get parseDate {
    return DateFormat.MMMd().format(this);
  }
}
